{ pkgs,  ... }:

{
  # Bootloader
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";
  boot.loader.timeout = 8;
  boot.initrd.enable = true;
  boot.initrd.verbose = false;
  boot.initrd.systemd.enable = true;
  boot.consoleLogLevel = 3;
  boot.plymouth = {
    enable = true;
    font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
    themePackages = [ pkgs.catppuccin-plymouth ];
    theme = "catppuccin-macchiato";
  };
}
