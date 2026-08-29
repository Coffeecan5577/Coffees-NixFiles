{
  flake.modules.nixos.core-boot = { pkgs, ... }: 
  {
    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.timeout = 8;

    boot.initrd.enable = true;
    boot.initrd.verbose = false;
    boot.initrd.systemd.enable = true;
    boot.initrd.availableKernelModules = [ "amdgpu" ];
    boot.initrd.kernelModules = [ "amdgpu" ];

    # Workaround for amdgpu flip_done timed out / display freeze bug
    # (disables Panel Self Refresh) — see gitlab.freedesktop.org/drm/amd/-/work_items/4141
    boot.kernelParams = [ "amdgpu.dcdebugmask=0x10" ];

    boot.consoleLogLevel = 3;
    boot.plymouth = {
      enable = true;
      font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
      themePackages = [ pkgs.catppuccin-plymouth ];
      theme = "catppuccin-macchiato";
    };
  };
}
