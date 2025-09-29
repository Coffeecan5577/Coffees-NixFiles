{ homeStateVersion, user, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
    ];

    home = {
      username = "coffeecan";
      homeDirectory = "/home/coffeecan";
      stateVersion = "25.05";
    };
}
