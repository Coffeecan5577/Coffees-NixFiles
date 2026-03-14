{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    dejavu_fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.monaspace
    nerd-fonts.symbols-only
    noto-fonts
    noto-fonts-lgc-plus
    noto-fonts-color-emoji
    font-awesome
    pixel-code
    powerline-fonts
    powerline-symbols    
  ];
}
