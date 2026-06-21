{
  description = "vpsFree.cz notification templates for vpsAdmin";

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
          vpsadminNotificationTemplates = pkgs.writeShellScriptBin "vpsadmin-notification-templates" ''
            exec ${ruby}/bin/ruby -I${vpsadmin.outPath}/notification_templates/lib ${vpsadmin.outPath}/notification_templates/bin/vpsadmin-notification-templates "$@"
          '';
        in
        {
          default = pkgs.mkShell {
            name = "vpsfree-notification-templates";

            packages = with pkgs; [
              git
              ruby
              vpsadminNotificationTemplates
            ];

            shellHook = ''
              export GEM_HOME="$PWD/.gems"
              mkdir -p "$GEM_HOME"
              export GEM_PATH="$GEM_HOME:$PWD/lib"

              export BUNDLE_GEMFILE="$PWD/Gemfile"
              export BUNDLE_PATH="$GEM_HOME"

              gem_bin="$(${ruby}/bin/ruby -e 'puts Gem.bindir')"
              ${ruby}/bin/bundle install

              rm -f "$gem_bin/vpsadmin-notification-templates"

              export RUBYOPT=-rbundler/setup
              export PATH="$PATH:$gem_bin"

              if [ -n "''${PS1-}" ]; then
                export PS1="(dev:notification-templates) $PS1"
              fi
            '';
          };
        }
      );
    };
}
