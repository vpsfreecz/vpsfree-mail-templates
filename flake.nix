{
  description = "vpsFree.cz notification templates for vpsAdmin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      supportedSystems = [ "x86_64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      revision = nixpkgs.lib.removeSuffix "-dirty" (self.rev or self.dirtyRev or "dev");
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = pkgs.stdenvNoCC.mkDerivation {
            pname = "vpsfree-notification-templates";
            version = nixpkgs.lib.strings.sanitizeDerivationName revision;
            src = ./.;

            installPhase = ''
              mkdir -p "$out"
              cp -a templates "$out/templates"
            '';
          };
        }
      );

      devShells = forAllSystems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
          ruby = pkgs.ruby_3_4;
        in
        {
          default = pkgs.mkShell {
            name = "vpsfree-notification-templates";

            packages = with pkgs; [
              git
              ruby
            ];

            shellHook = ''
              export GEM_HOME="$PWD/.gems"
              mkdir -p "$GEM_HOME"
              export GEM_PATH="$GEM_HOME:$PWD/lib"

              export BUNDLE_GEMFILE="$PWD/Gemfile"
              export BUNDLE_PATH="$GEM_HOME"

              gem_bin="$(${ruby}/bin/ruby -e 'puts Gem.bindir')"
              ${ruby}/bin/bundle install

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
