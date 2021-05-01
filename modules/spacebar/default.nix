{ pkgs, ... }:

{
    enable = true;
    package = pkgs.spacebar;
    config = {
        debug_output       = "on";
        position           = "top";
        clock_format       = "%R";
        space_icon_strip   = "   ";
        text_font          = ''"Roboto Mono:Regular:12.0"'';
        icon_font          = ''"FontAwesome:Regular:12.0"'';
        background_color   = "0xff2e3440";
        foreground_color   = "0xffd8dee9";
        space_icon_color   = "0xff81a1c1";
        dnd_icon_color     = "0xff81a1c1";
        clock_icon_color   = "0xff81a1c1";
        power_icon_color   = "0xff81a1c1";
        battery_icon_color = "0xff81a1c1";
        power_icon_strip   = " ";
        space_icon         = "";
        clock_icon         = "";
        dnd_icon           = "";
    };
}
