{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;

    settings = {
      env = [
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/Pictures/Screenshots"
      ];

      monitor = "e-DP1,1920x1200@120,auto,1";

      "$mainMod" = "SUPER";
      "$terminal" = "ghostty";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$browser" = "librewolf";
      "$menu" = "wofi";

      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "hyprpaper"
      ];

      general = {
        gaps_in = 0;
        gaps_out = 0;

        border_size = 5;

        "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
        "col.inactive_border" = "rgba(3c3836ff)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        rounding = 1;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow.enabled = false;

        blur.enabled = false;
      };

      animations = {
        enabled = true;
      };

      input = {
        kb_layout = "us";
        kb_options = "grp:caps_toggle";
      };

      dwindle = {
        preserve_split = true;
        smart_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrule = [
        # Floating windows
        "float on, match:class ^(mpv|imv|showmethekey-gtk)$"

        # ShowMeTheKey
        "move 990 60, match:class ^(showmethekey-gtk)$"
        "size 900 170, match:class ^(showmethekey-gtk)$"
        "pin on, match:class ^(showmethekey-gtk)$"
        "no_initial_focus on, match:class ^(showmethekey-gtk)$"
        "border_size 0, match:class ^(showmethekey-gtk)$"
        "no_focus on, match:class ^(showmethekey-gtk)$"

        # Workspace assignments
        "workspace 1, match:class ^(librewolf)$"
        "workspace 2, match:class ^(superfile)$"
        "workspace 3, match:class ^(ghostty)$"
        "workspace 4, match:class ^(obsidian)$"
        "workspace 5, match:class ^(btop-rocm)$"
        "workspace 6, match:class ^(gaming)$"
        "workspace 7, match:class ^(zed-editor)$"
        "workspace 8, match:class ^(keepassxc)$"
        "workspace 9, match:class ^(gitkraken)$"

        # Suppress maximize requests
        "suppress_event maximize, match:class .*"

        # Empty XWayland helper windows
        "no_focus on, match:class ^$, match:title ^$"

        # XWaylandVideoBridge
        "opacity 0.0 override, match:class ^(xwaylandvideobridge)$"
        "no_anim on, match:class ^(xwaylandvideobridge)$"
        "no_initial_focus on, match:class ^(xwaylandvideobridge)$"
        "max_size 1 1, match:class ^(xwaylandvideobridge)$"
        "no_blur on, match:class ^(xwaylandvideobridge)$"
        "no_focus on, match:class ^(xwaylandvideobridge)$"
      ];

      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
    };
  };
}
