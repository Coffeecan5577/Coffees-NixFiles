{
  flake.modules.nixos.core-timezone = { pkgs, ...}:
  {
    time.timeZone = "America/Chicago";
  };
}
