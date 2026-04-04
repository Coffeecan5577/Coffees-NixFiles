{ inputs, ...}:
{
  imports = [
    # ./binds.nix
    inputs.niri.homeModules.niri 
    ./main.nix
    ];
}
