{
  flake.modules.homeManager.shell-fetch = {inputs, pkgs, ...}:
  {
    imports = [ inputs.areofyl-fetch.homeManagerModules.default];

    programs.fetch = {
      enable = true;
      labelColor = "blue";
      info = [
        "host"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "display"
        "wm"
        "theme"
        "icons"
        "font"
        "terminal"
        "cpu"
        "gpu"
        "memory"
        "swap"
        "disk"
        "ip"
        "battery"
        "locale"
        "colors"
      ];
      speed = 1.0;
      spin = "xy";
    };
  };
}
