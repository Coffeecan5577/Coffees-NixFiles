{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  
  # Packages in each category are sorted alphabetically
  
  # CLI utilities
    atuin
    btop
    cbonsai
    cliphist
    erdtree
    fastfetch
    git
    lshw
    ranger
    showmethekey
    silicon
    tealdeer
    udisks
    unzip
    wget
    wl-clipboard

  # Desktop Applications
    zed-editor

  # Other utilities
    nix-prefetch-scripts
  ];
}
