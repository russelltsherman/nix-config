{ pkgs, ... }:

{
  enable = true;
  enableBashIntegration = false;
  enableFishIntegration = true;
  enableNixDirenvIntegration = true;
  enableZshIntegration = true;
  config = {}; # Configuration written to ~/.config/direnv/config.toml.
  stdlib = ''
  ''; # Custom stdlib written to ~/.config/direnv/direnvrc.

}


