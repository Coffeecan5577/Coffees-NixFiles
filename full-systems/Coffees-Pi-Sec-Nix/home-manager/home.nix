{ pkgs, homeStateVersion, user, ... }:
{
  imports = [
    ./modules
    ./home-packages.nix
    ];

    home = {
      username = "coffeecan";
      homeDirectory = "/home/coffeecan";
      stateVersion = "26.05";
    };
}
