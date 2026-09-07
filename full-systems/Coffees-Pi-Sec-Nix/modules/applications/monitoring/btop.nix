{
  flake.modules.homeManager.applications-btop = { pkgs, ...}:
  {
    programs.btop = {
      enable = true;
      settings = {
        color_theme = "gruvbox_light";
        theme_background = true;
      };
    };
  };
}
