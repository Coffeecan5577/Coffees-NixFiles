{ pkgs, ... }:
{
  programs.virt-manager = {
     enable = true;
  };
  users.groups.libvirtd.members = ["coffeecan"];
  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
    libvirtd.qemu.package = pkgs.qemu;
  };

  services.qemuGuest = {
    enable = true;
  };

  services.spice-vdagentd = {
    enable = true;   # Enable copy and paste between host and guest machines
  };

}
