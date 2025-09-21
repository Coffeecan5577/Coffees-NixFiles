{config, lib, pkgs, ...}:

{
  # Load AMD GPU drivers in Xserver
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];
}
