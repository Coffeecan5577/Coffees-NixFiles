{
  flake.modules.homeManager.desktop-icons = { pkgs, ... }:
    let
      tulasi = pkgs.stdenvNoCC.mkDerivation {
        name = "tulasi-icon-theme";
        src = pkgs.fetchFromGitHub {
          owner = "shringarstudio";
          repo = "tulasi";
          rev = "6fe39fb";                      # better: pin a specific commit
          hash = "sha256-I5a5gakJ7yZ649VGp3K0hruSivjDsZ3MScgGAff4F5A=";
        };
        installPhase = ''
          mkdir -p $out/share/icons/Tulasi
          cp -r . $out/share/icons/Tulasi
        '';
      };
    in {
      gtk = {
        enable = true;
        iconTheme = {
          name = "Tulasi";
          package = tulasi;
        };
      };
    };
}
