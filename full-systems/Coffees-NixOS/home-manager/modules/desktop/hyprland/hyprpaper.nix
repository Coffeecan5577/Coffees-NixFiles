{
  services.hyprpaper = {
    enable = true;
    settings = {
      splash = false;
      wallpaper = [
        {
          monitor = "eDP-1";
          path = "./wallpapers/Nix_Gruvbox_Rainbow.png";
          # fit_mode = "fill";
        }
 
        {
          monitor = "HDMI-A-1";
          path = "./wallpapers/Nix_Gruvbox_Rainbow.png";
          # fit_mode = "fill";
        }
      ];   
    };
  };
}
