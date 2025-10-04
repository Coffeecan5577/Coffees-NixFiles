{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    dejavu_fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.monaspace
    nerd-fonts.symbols-only
    noto-fonts
    noto-fonts-lgc-plus
    noto-fonts-emoji
    font-awesome
    powerline-fonts
    powerline-symbols    
  ];
}
