let
  username = "coffeecan";
in
{
  flake.modules.nixos.core-user = { pkgs, ... }: {
    programs.fish.enable = true;
    users.defaultUserShell = pkgs.fish;
    users.users.${username} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "libvirtd" ];
    };
  };

  flake.modules.homeManager.core-user = {
    home.username = username;
    home.homeDirectory = "/home/${username}";
    home.stateVersion = "26.05";
  };
}
