{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  
  # Packages in each category are sorted alphabetically
  
  # CLI utilities
    brightnessctl
    btop
    cbonsai
    cliphist
    erdtree
    fastfetch
    ghostty
    git
    hyprpaper
    hyprpicker
    lshw
    ranger
    showmethekey
    silicon
    tealdeer
    udisks
    ueberzugpp
    unzip
    waybar
    wget
    wl-clipboard
    wofi

  # Desktop Applications
    cartridges
    dolphin-emu
    duckstation
    emacs
    flameshot
    gitkraken
    gparted
    keepassxc
    librewolf
    mangohud
    melonDS
    mgba
    nestopia-ue
    obsidian
    onlyoffice-desktopeditors
    pika-backup
    snes9x-gtk
    virt-manager
    vscodium

  # Window Manager stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    grim

  # Other utilities
    nix-prefetch-scripts
  ];
}
