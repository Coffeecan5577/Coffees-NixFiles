{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.kernelPackages = pkgs.linuxKernel.packages.linux_rpi4;
  boot.initrd.availableKernelModules = [ "xhci_pci" "usbhid" "usb_storage" ];

  # File Systems
   fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
      options = [ "noatime" ];
    };
  };

  # Adding mounted external drive on Pi-Mon-Nix
   fileSystems = {
    "/srv/nfs" = {
       device = "/dev/disk/by-uuid/574f4de0-0a87-4a5a-af2c-130680ed95b6";
       fsType = "btrfs";
       options = [ "users" "nofail" "rw" ];
     };
   };

   # Adding NFS directory to prepare for export
   fileSystems."/srv/nfs" = {
    device = "/srv/nfs/Coffees-Homelab";
    options = [ "bind" ];
  };

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp11s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp12s0f3u2u2.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp9s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "aarch64-linux";
}
