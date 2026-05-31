{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  
  # Packages in each category are sorted alphabetically
  
  # CLI utilities
    atuin
    brightnessctl
    btop-rocm
    caligula
    cbonsai
    cliphist
    drift
    erdtree
    fastfetch
    ghostty
    git
    hyprpaper
    hyprpicker
    lshw
    nmap
    oh-my-posh
    opencode
    ranger
    showmethekey
    silicon
    tealdeer
    udisks
    ueberzugpp
    unzip
    usbutils
    waybar
    wget
    wl-clipboard
    wofi

  # Desktop Applications
    deluge
    dolphin-emu
    firefox
    flameshot
    gitkraken
    gparted
    inkscape
    keepassxc
    librewolf
    localsend
    melonds
    mgba
    nestopia-ue
    obsidian
    onlyoffice-desktopeditors
    pika-backup
    # rustdesk-flutter
    # snes9x-gtk
    virt-manager
    zed-editor

  # Window Manager stuff
    # libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    grim

  # Other utilities
    age
    nix-output-monitor
    nix-prefetch-scripts
    nvd
    sops
    ssh-to-age
  ];
}
