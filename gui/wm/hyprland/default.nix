{ config
, inputs
, pkgs
, lib
, ...
}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    extraConfig = ''
      exec-once = hyprpaper
    '';
    settings = {
      monitor = "HDMI-A-1, modeline 173.84 1920 1973 1977 1978 1080 1081 1084 1089 +hsync -vsync, 0x0, 1";
      general = {
        gaps_in = 6;
        gaps_out = 12;
        border_size = 0;
      };
      decoration = {
        rounding = 0;
        drop_shadow = true;
        shadow_range = 15;
        "col.shadow" = "0xFF7692FF";
        "col.shadow_inactive" = "0xFFC6D4FF";
        dim_inactive = true; 
        dim_strength = 0.33;
        blur = {
          enabled = true;
        };
      };
      animations = {
        enabled = true;
        first_launch_animation = true;
        bezier = "iul, 0.33, 1, 0.99, 1";
        animation = [
          "windowsOut, 1, 6, iul, slide"
          "windowsIn, 1, 6, iul, slide"
          "borderangle, 1, 2, iul"
          "border, 1, 2, iul"
          "fadeOut, 1, 4, iul"
          "fadeIn, 1, 4, iul"
          "workspaces, 1, 6, iul, slidevert"
        ];
      };
      input = {
        kb_layout = "us, ua, ru";
        kb_options = "grp:alt_shift_toggle";
        follow_mouse = 1;
        sensitivity = 1;
      };
      device = {
        name = "compx-fantech-aria-xd7";
        sensitivity = -0.5;
      };
      dwindle = {
        preserve_split = true;
        smart_split = true;
        pseudotile = true;
      };
      bind = [
        "ALT, f, togglefloating"
        "ALT, g, togglesplit"
        "ALT, s, swapsplit"
        "ALT, d, pseudo"
        "SUPER, 1, movewindow, l"
        "SUPER, 2, movewindow, r"
        "SUPER, 3, movewindow, u"
        "SUPER, 4, movewindow, d" 
        "ALT, 1, workspace, 1"
        "ALT, 2, workspace, 2"
        "ALT, 3, workspace, 3"
        "ALT, 4, workspace, 4"
        "ALT, 5, workspace, 5"
        "SUPER SHIFT, 1, movetoworkspace, 1"
        "SUPER SHIFT, 2, movetoworkspace, 2"
        "SUPER SHIFT, 3, movetoworkspace, 3"
        "SUPER SHIFT, 4, movetoworkspace, 4"
        "SUPER SHIFT, 5, movetoworkspace, 5"
        "ALT, q, killactive"
        "SUPER, r, exec, alacritty"
        "SUPER, f, exec, firefox-nightly"
        "SUPER, t, exec, telegram-desktop"
        "SUPER, b, exec, qbittorrent"
        "SUPER, g, exec, bottles"
        "SUPER, d, exec, vesktop"
        "SUPER, s, exec, steam"
        "SUPER, e, exec, nemo"
        "SUPER SHIFT, s, exec, wayshot"
        "SUPER SHIFT, e, exec, hyprshot"
      ];
      bindm = [
        "ALT, mouse:272, movewindow"
        "ALT, mouse:273, resizewindow"
      ];
    };
  };
}
