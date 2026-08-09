{
  flake.modules.nixos.desktop-hyprland = {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
    security.pam.services.hyprlock = {};
  };
}
