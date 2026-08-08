{
  flake.modules.nixos.desktop-hyprland = {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    security.pam.services.hyprlock = {};
  };
}
