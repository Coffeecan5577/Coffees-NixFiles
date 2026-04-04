{	
  wayland.windowManager.niri = {
    enable = true;
    settings = {
      output = [
        {
          _args = ["DP-0"];
          mode = "1920x1080@60";
          position._props = 
            {
              x = 0;
              y = 0;
            };
        }
      ];

     input = {
       keyboard.xkb = {
       layout = "us";
       };
  };
  layout = {
    preset-column-widths._children = [
      {proportion = 0.33333;}
      {proportion = 0.5;}
      {proportion = 0.66667;}
      {proportion = 1.0;}
    ];
    focus-ring.off = [];
     };
  
     window-rule = [
    {
      block-out-from = "screen-capture";
    }
  ];

  binds = {
    "Mod+TouchpadScrollDown" = {
      _props = {
        cooldown-ms = 500;
      };
      focus-workspace-down = [];
    };
    "Mod+T" = {
      spawn = "ghostty";
    };
    XF86AudioRaiseVolume = {
      spawn-sh = [
        "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+"
      ];
    };
  };
  spawn-sh-at-startup = [
    ["wl-paste --type text --watch cliphist store"]
    ["wl-paste --type image --watch cliphist store"]
  ];
  };
 };
}
