{ inputs, ...}:
{
  imports = [
    # ./binds.nix
    inputs.niri-flake.homeModules.niri # Import niri's home-manager module
    ./main.nix
    ./noctalia-shell.nix
    ];
}
