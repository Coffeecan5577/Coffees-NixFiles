{ inputs, ...}:
{
  imports = [
    # ./binds.nix
    # inputs.niri.homeModules.niri # Import niri's home-manager module
    ./main.nix
    ./noctalia-shell.nix
    ];
}
