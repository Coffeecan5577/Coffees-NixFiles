{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  
  # Packages in each category are sorted alphabetically
  
  # CLI utilities
    atuin
    btop-rocm
    cbonsai
    cliphist
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

  # Window Manager stuff
    # libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    grim

  # Other utilities
    nix-prefetch-scripts
  ];
}
