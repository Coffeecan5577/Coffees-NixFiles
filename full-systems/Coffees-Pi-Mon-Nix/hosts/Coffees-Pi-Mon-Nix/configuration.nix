{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    <nixos-hardware/raspberry-pi/4>
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
