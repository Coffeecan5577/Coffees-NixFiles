{
  flake.modules.homeManager.applications-btop-rocm = { pkgs, ... }: {
    programs.btop = {
      package = pkgs.btop-rocm;
      enable = true;
      settings = {
        color_theme = "gruvbox_light";
        theme_background = true;
      };
    };
  };
}
