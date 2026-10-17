{
  flake.modules.nixos.generation-management.nixdatifier = {pkgs, lib, inputs, ...}: {
    programs.nixdatifier = {
      enable = true;
    };
  };
}
