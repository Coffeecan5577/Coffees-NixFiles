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
    usbutils
    waybar
    wget
    wl-clipboard
    wofi
    yazi

  # Desktop Applications

  # Window Manager stuff
    # libsForQt5.xwaylandvideobridge
    libnotify
    grim

  # Other utilities
    nix-output-monitor
    nix-prefetch-scripts
    nvd
  ];
}
