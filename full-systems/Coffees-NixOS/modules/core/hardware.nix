{
  flake.modules.nixos.core-hardware = { config, lib, pkgs, ... }: {
    # Load AMD GPU drivers in Xserver
    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "amdgpu" ];
    hardware = {
      graphics = {
        enable = true;
        enable32Bit = true;
      };
    };
  };
}
