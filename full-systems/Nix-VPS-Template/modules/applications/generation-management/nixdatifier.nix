{
  flake.modules.nixos.generation-management-nixdatifier = {lib, ...}: {
    programs.nixdatifier = {
      enable = true;
    };
  };
}
