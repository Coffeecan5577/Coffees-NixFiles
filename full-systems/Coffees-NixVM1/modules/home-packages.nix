{
  flake.modules.homeManager.home-packages = { pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [

      # Packages in each category are sorted alphabetically

      # CLI utilities
      atuin
      brightnessctl
      btop-rocm
      caligula
      cbonsai
      claude-code
      claude-monitor
      cliphist
      drift
      erdtree
      exiftool
      fastfetch
      ghostty
      git
      hyprpaper
      hyprpicker
      lshw
      nmap
      oh-my-posh
      showmethekey
      silicon
      superfile
      tealdeer
      udisks
      ueberzugpp
      unzip
      usbutils
      waybar
      wget
      wl-clipboard
      wofi
      zoxide

      # Desktop Applications
      gitkraken
      keepassxc
      localsend
      virt-manager

      # Window Manager stuff
      # libsForQt5.xwaylandvideobridge
      libnotify
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
      grim

      # Other utilities
      nixmate
      nix-output-monitor
      nix-prefetch-scripts
      nurl
      nvd
    ];
  };
}
