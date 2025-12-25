{pkgs, ...}: {
  programs.btop = 
    {
      package = pkgs.btop-rocm;
      enable = true;
      settings = 
        {
          color_theme = "ayu";
          theme_background = true;
        };
    };
}
