{ inputs, ... }:
{
  flake.modules.homeManager.applications-gitkraken = { pkgs, ... }:
  let
    unstable = import inputs.nixpkgs-unstable {
      inherit (pkgs.stdenv.hostPlatform) system; 
      config.allowUnfree = true;
    };
  in
  {
    home.packages = [ unstable.gitkraken ];
  };
}
