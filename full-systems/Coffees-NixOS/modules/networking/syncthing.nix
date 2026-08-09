{
  flake.modules.nixos.networking-syncthing = {
    services = {
      syncthing = {
        enable = true;
        group = "users";
        user = "coffeecan";
        dataDir = "/home/coffeecan/Syncthing";
        configDir = "/home/coffeecan/.config/syncthing";
      };
    };
  };
}
