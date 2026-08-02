{ inputs, pkgs, homeStateVersion, user, ... }:
{
  imports = [
    ./modules
    ./home-packages.nix
    inputs.areofyl-fetch.homeManagerModules.default
    ];

    home = {
      username = "coffeecan";
      homeDirectory = "/home/coffeecan";
      stateVersion = "26.05";
    };
}
