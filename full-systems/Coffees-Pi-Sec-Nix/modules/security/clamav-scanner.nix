{
  flake.modules.nixos.security-clamav-scanner = {
    services.clamav.scanner = {
      enable = true;
      interval = "Sat *-*-* 04:00:00";
    };
  };
}
