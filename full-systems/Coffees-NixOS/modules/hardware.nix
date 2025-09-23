{config, lib, pkgs, ...}:

{
  # Load AMD GPU drivers in Xserver
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.graphics.extraPackages = with pkgs; 
  [ amdvlk ];

  hardware = {
    graphics = {
        enable = true;
        enable32Bit = true;
    };

    amdgpu.amdvlk = {
        enable = true;
        support32Bit.enable = true;
    };
  };
}
