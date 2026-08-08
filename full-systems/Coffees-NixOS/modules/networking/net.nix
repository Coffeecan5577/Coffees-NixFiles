{
  flake.modules.nixos.networking-net = { pkgs, ... }: {
    # Enable networking
    networking.wireless.iwd = {
      enable = true;
      settings = {
        General = {
          EnableNetworkConfiguration = true;
          AddressRandomization = "network";
        };
        Network = {
          EnableIPv6 = true;
        };
        Scan = {
          DisablePeriodicScan = true;
        };
      };
    };
    environment.systemPackages = with pkgs; [
      iwgtk
      impala
    ];
  };
}
