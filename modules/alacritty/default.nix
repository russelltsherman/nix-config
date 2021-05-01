{ pkgs, ... }:

{
  enable = true;
  package = pkgs.alacritty;
  settings = {
    # window.dimensions = {
    #   lines = 3;
    #   columns = 200;
    # };
    # key_bindings = [
    #   {
    #     key = "K";
    #     mods = "Control";
    #     chars = "\\x0c";
    #   }
    # ];
  };
}
