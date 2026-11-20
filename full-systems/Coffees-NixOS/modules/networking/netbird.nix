{
  flake.modules.nixos.networking-netbird = {
    # NetBird client for the hosted service (wt0 interface, UDP 51820).
    # Enroll once after the first rebuild with: netbird-wt0 up
    services.netbird.enable = true;
  };
}
