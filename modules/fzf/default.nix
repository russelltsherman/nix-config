{ pkgs, ... }:

{

  enable = true;
  enableBashIntegration = false;
  enableFishIntegration = true;
  enableZshIntegration = true;
  package = pkgs.fzf;
  changeDirWidgetCommand = null;
  changeDirWidgetOptions = [];
  defaultCommand = null;
  defaultOptions = [];
  fileWidgetCommand = null;
  fileWidgetOptions = [];
  historyWidgetOptions = [];

}
