{ config, pkgs, lib, ... }:
{
  hardware.enableRedistributableFirmware = true;
  
  hardware = {
    raspberry-pi."4".apply-overlays-dtmerge.enable = true;
    deviceTree = {
      enable = true;
      filter = "*rpi-4-*.dtb";   
    };
  };
}

