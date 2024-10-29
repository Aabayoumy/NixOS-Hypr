{ pkgs
, config
, ... 
}:
let
  trueTokyo = import ./colors.nix;
in {
  programs.alacritty = {
    enable = true;
    settings = {
      colors = {
        primary = {
          foreground = trueTokyo.colorScheme.palette.base05;
          background = trueTokyo.colorScheme.palette.base00;
        };
        normal = {
          black = trueTokyo.colorScheme.palette.base00;
          red = trueTokyo.colorScheme.palette.base08;
          green = trueTokyo.colorScheme.palette.base0B;
          yellow = trueTokyo.colorScheme.palette.base0A;
          blue = trueTokyo.colorScheme.palette.base0D;
          magenta = trueTokyo.colorScheme.palette.base0E;
          cyan = trueTokyo.colorScheme.palette.base0C;
          white = trueTokyo.colorScheme.palette.base05;
        };
        bright = {
          black = trueTokyo.colorScheme.palette.base03;
          red = trueTokyo.colorScheme.palette.base08;
          green = trueTokyo.colorScheme.palette.base0B;
          yellow = trueTokyo.colorScheme.palette.base0A;
          blue = trueTokyo.colorScheme.palette.base0D;
          magenta = trueTokyo.colorScheme.palette.base0E;
          cyan = trueTokyo.colorScheme.palette.base0C;
          white = trueTokyo.colorScheme.palette.base07;
        };
      };
      font = {
        size = 11;
        normal = {
          family = "IosevkaTerm NFP";
          style = "Regular";
        };
        bold = {
          family = "IosevkaTerm NFP";
          style = "Bold";
        };
        italic = {
          family = "IosevkaTerm NFP";
          style = "Italic";
        };
        bold_italic = {
          family = "IosevkaTerm NFP";
          style = "Bold Italic";
        };
      };
    };
  };
}
