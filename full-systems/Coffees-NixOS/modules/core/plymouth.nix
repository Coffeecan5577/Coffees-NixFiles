{
  flake.modules.nixos.core-plymouth = { pkgs, ... }:
    let
      icy = pkgs.stdenvNoCC.mkDerivation {
        name = "plymouth-theme-icy";
        src = ../../assets/plymouth;   # see the note below
        nativeBuildInputs = [ pkgs.ffmpeg-headless ];

        buildPhase = ''
          mkdir frames
          ffmpeg -i icy.mp4 -vf "fps=8,scale=960:-1" frames/frame-%d.png
        '';

        installPhase = ''
          dir=$out/share/plymouth/themes/icy
          mkdir -p $dir
          cp frames/*.png $dir/
          count=$(ls frames | wc -l)

          cp icy.script $dir/icy.script
          substituteInPlace $dir/icy.script \
            --replace-fail FRAME_COUNT_PLACEHOLDER "$count"

          cat > $dir/icy.plymouth <<EOF
          [Plymouth Theme]
          Name=icy
          Description=Ice and snow boot animation
          ModuleName=script

          [script]
          ImageDir=$dir
          ScriptFile=$dir/icy.script
          EOF
        '';
      };
    in {
      boot.plymouth = {
        enable = true;
        font = "${pkgs.pixel-code}/share/fonts/opentype/PixelCode.otf";
        theme = "icy";
        themePackages = [ icy ];
      };
    };
}
