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
    mkcert
    oh-my-posh
    showmethekey
    silicon
    tealdeer
    udisks
    unzip
    wget
    wl-clipboard

  # Desktop Applications

  # Server Applications
    actual-server

  # Other utilities
    age
    nix-output-monitor
    nix-prefetch-scripts
    nvd
    rustdesk-server
    sops
    ssh-to-age
    traefik
  ];
}
