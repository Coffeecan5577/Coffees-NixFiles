{ pkgs,  ... }:

{
  # Bootloader.
  boot.consoleLogLevel = 3;
  boot.loader = {
      grub.enable = false;
      generic-extlinux-compatible.enable = true;
    };
  boot.plymouth = {
    enable = true;
    font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
    themePackages = [ pkgs.catppuccin-plymouth ];
    theme = "catppuccin-macchiato";
    };
}
