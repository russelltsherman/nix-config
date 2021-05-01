{ pkgs, ... }:

{
  enable = true;
  enableBashIntegration = false;
  enableFishIntegration = true;
  enableZshIntegration = true;
  extraConfig = ''
  '';
  settings = {
    OTHER_WRITABLE = "30;46";
    ".sh" = "01;32";
    ".csh" = "01;32";
  };

}
