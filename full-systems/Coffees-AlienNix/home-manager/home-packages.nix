{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  
  # Packages in each category are sorted alphabetically
  
  # CLI utilities
    btop
    cbonsai
    cliphist
    emacs
    fastfetch
    ghostty
    git
    hyprpaper
    librewolf
    lshw
    microfetch
    ranger
    parted
    unzip
    waybar
    wget
    wl-clipboard
    wofi

  # Window Manager stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

  ];
}
