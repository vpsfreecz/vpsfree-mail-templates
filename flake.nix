{
  description = "vpsFree.cz mail templates for vpsAdmin";

  inputs = {
    vpsadmin.url = "github:vpsfreecz/vpsadmin/master";
    nixpkgs.follows = "vpsadmin/nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      vpsadmin,
    }:
    let
      supportedSystems = [ "x86_64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      devShells = forAllSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
          ruby = pkgs.ruby_3_4;
          vpsadminMailTemplates = pkgs.writeShellScriptBin "vpsadmin-mail-templates" ''
            exec ${ruby}/bin/ruby -I${vpsadmin.outPath}/mail_templates/lib ${vpsadmin.outPath}/mail_templates/bin/vpsadmin-mail-templates "$@"
          '';
        in
        {
          default = pkgs.mkShell {
            name = "vpsfree-mail-templates";

            packages = with pkgs; [
              git
              ruby
              vpsadminMailTemplates
            ];

            shellHook = ''
              export GEM_HOME="$PWD/.gems"
              mkdir -p "$GEM_HOME"
              export GEM_PATH="$GEM_HOME:$PWD/lib"

              export BUNDLE_GEMFILE="$PWD/Gemfile"
              export BUNDLE_PATH="$GEM_HOME"

              gem_bin="$(${ruby}/bin/ruby -e 'puts Gem.bindir')"
              ${ruby}/bin/bundle install

              rm -f "$gem_bin/vpsadmin-mail-templates"

              export RUBYOPT=-rbundler/setup
              export PATH="$PATH:$gem_bin"

              if [ -n "''${PS1-}" ]; then
                export PS1="(dev:mail-templates) $PS1"
              fi
            '';
          };
        }
      );
    };
}
