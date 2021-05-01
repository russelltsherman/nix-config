{ pkgs, ... }:
{
  activate-system.enable = true;
  autossh = {
    sessions = [];
  };
  khd = {
    enable = true;
    package = pkgs.khd;
    i3Keybindings = false;
    khdConfig = "";
  };
  nix-daemon.enable = false;
  # skhd = (import ./../skhd { inherit pkgs; });
  # spacebar = (import ./../spacebar { inherit pkgs; });
  # yabai = (import ./../yabai { inherit pkgs; });
}
