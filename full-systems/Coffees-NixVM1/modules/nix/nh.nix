{
  flake.modules.nixos.nix-nh = {
    programs.nh = {
      enable = true;
      flake = "/home/coffeecan/flake";
    };
  };
}
