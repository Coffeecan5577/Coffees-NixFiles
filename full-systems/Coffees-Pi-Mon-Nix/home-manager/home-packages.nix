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
    oh-my-posh
    showmethekey
    silicon
    tealdeer
    udisks
    unzip
    wget
    wl-clipboard

  # Desktop Applications

  # Other utilities
    age
    nix-output-monitor
    nix-prefetch-scripts
    nvd
    sops
    ssh-to-age
  ];
}
