{ pkgs, ...}:
{
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.plymouth = {
    enable = true;
    font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
    themePackages = [ pkgs.catppuccin-plymouth ];
    theme = "catppuccin-macchiato";
  };
}
