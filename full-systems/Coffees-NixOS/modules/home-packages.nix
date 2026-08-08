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
      opencode
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
      calibre
      deluge
      dolphin-emu
      flameshot
      gitkraken
      gparted
      higan
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
      rustdesk-flutter
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
      nurl
      nvd
      sops
      ssh-to-age
    ];
  };
}
