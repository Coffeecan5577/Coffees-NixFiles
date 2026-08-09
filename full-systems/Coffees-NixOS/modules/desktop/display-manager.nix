{
  flake.modules.nixos.desktop-display-manager = { pkgs, ... }: {
    # Enable Display Manager
    services.greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.tuigreet}/bin/tuigreet \
            --time --time-format '%I:%M %p | %a • %h | %F' \
            --cmd 'uwsm start -- start-hyprland'";
          user = "greeter";
        };
      };
    };
    users.users.greeter = {
      isNormalUser = false;
      description = "greetd greeter user";
      extraGroups = [ "video" "audio" ];
      linger = true;
    };
    environment.systemPackages = with pkgs; [
      tuigreet
    ];
    systemd = {
      # To prevent getting stuck at shutdown
      settings.Manager = {
        DefaultTimeoutStopSec = 10;
      };
      services.greetd.serviceConfig = {
        Type = "idle";
        StandardInput = "tty";
        StandardOutput = "tty";
        StandardError = "journal";
        TTYReset = true;
        TTYVHangup = true;
        TTYVTDisallocate = true;
      };
    };
  };
}
