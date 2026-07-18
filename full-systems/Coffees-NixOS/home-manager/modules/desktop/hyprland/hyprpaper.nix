{
  services.hyprpaper = {
    enable = true;
    settings = {
      splash = false;
      wallpaper = [
        {
          monitor = "eDP-1";
          path = "~/Coffees-NixFiles/full-systems/Coffees-NixOS/home-manager/modules/desktop/hyprland/wallpapers/Nix_Gruvbox_Rainbow.png";
          # fit_mode = "fill";
        }
 
        {
          monitor = "HDMI-A-1";
          path = "~/Coffees-NixFiles/full-systems/Coffees-NixOS/home-manager/modules/desktop/hyprland/wallpapers/Nix_Gruvbox_Rainbow.png";
          # fit_mode = "fill";
        }
      ];   
    };
  };
}
