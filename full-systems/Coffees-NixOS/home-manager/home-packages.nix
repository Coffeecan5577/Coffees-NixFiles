{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  
  # Packages in each category are sorted alphabetically
  
  # CLI utilities
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
    melonDS
    mgba
    nestopia-ue
    obsidian
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
