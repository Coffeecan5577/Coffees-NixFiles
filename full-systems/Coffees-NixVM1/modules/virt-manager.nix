{ pkgs, ... }:
{
  programs.virt-manager = {
     enable = true;
  };
  users.groups.libvirtd.members = ["coffeecan"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;
}
