{ homeStateVersion, user, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
    ];

    home = {
      username = "coffeecan";
      homeDirectory = "/home/coffeecan";
      stateVersion = "26.05";
    };

  # Niri configuration file redirection
  # xdg.configFile."niri/config.kdl".source = ./config.kdl;
}
