{
  flake.modules.homeManager.applications-btop-rocm = { pkgs, ... }: {
    programs.btop = {
      package = pkgs.btop-rocm;
      enable = true;
      settings = {
        color_theme = "kyli0x";
        theme_background = true;
      };
    };
  };
}
