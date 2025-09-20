{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  
  # Packages in each category are sorted alphabetically
  
  # CLI utilities
    btop
    cbonsai
    cliphist
    fastfetch
    ghostty
    git
    hyprpaper
    hyprpicker
    lshw
    ranger
    showmethekey
    silicon
    udisks
    unzip
    waybar
    wget
    wl-clipboard
    wofi

  # Desktop Applications
    cartridges
    emacs
    gitkraken
    gparted
    keepassxc
    librewolf
    obsidian
    virt-manager
    vscodium

  # Window Manager stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

  # Other utilities
    nix-prefetch-scripts

  ];
}
