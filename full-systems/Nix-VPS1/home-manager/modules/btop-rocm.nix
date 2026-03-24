{pkgs, ...}: {
  programs.btop = 
    {
      package = pkgs.btop-rocm;
      enable = true;
      settings = 
        {
          color_theme = "gruvbox_dark";
          theme_background = true;
        };
    };
}
