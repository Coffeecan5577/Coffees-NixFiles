{
  programs.niri = {
    enable = true;
      settings = {
        prefer-no-csd = true;
        input.keyboard.xkb = {
          layout = "us";
          variant = "intl";
        };
      };
    };
}
