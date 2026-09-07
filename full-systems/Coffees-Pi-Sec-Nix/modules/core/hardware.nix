{ 
  flake.modules.nixos.core-hardware = {pkgs, ...}:
  {
    hardware.enableRedistributableFirmware = true;
  };
}
