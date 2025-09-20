{config, lib, pkgs, ...}:

{
  # Enabling unfree software (nvidia drivers)
  nixpkgs.config.allowUnfree = true;

  # Enabling OpenGL and Nvidia Graphics Driver
  hardware.graphics = {
    enable = true;
    };

  # Load Nvidia Driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    # Mode setting is required
    modesetting.enable = true;

    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

  hardware.nvidia.prime = {
    # Make sure to use the correct Bus ID values for your system!
    intelBusId = "PCI:0:0:2";
    nvidiaBusId = "PCI:0:1:0";
    };
}
