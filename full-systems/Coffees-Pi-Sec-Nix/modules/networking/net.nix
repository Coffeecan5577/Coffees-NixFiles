{ pkgs, ... }:

{
  # Enable networking
  networking.wireless.iwd = {
    enable = false;
    settings = {
      General = {
        EnableNetworkConfiguration = true;
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
}
