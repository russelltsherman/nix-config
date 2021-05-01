{ pkgs, ... }:

{
  enable = true;
  enableBashIntegration = false;
  enableFishIntegration = true;
  enableZshIntegration = true;
  package = pkgs.broot;
  skin = {
    # status_normal_fg = "grayscale(18)";
    # status_normal_bg = "grayscale(3)";
    # status_error_fg = "red";
    # status_error_bg = "yellow";
    # tree_fg = "red";
    # selected_line_bg = "grayscale(7)";
    # permissions_fg = "grayscale(12)";
    # size_bar_full_bg = "red";
    # size_bar_void_bg = "black";
    # directory_fg = "lightyellow";
    # input_fg = "cyan";
    # flag_value_fg = "lightyellow";
    # table_border_fg = "red";
    # code_fg = "lightyellow";
  };
  verbs = [
    { execution = ":parent"; invocation = "p"; }
    { execution = "\$EDITOR {file}"; invocation = "edit"; shortcut = "e"; }
    { execution = "\$EDITOR {directory}/{subpath}"; invocation = "create {subpath}"; }
    { execution = "less {file}"; invocation = "view"; }
  ];

}
