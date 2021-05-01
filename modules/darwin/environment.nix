{ config, lib, pkgs, ... }:

{
  darwinConfig = lib.mkDefault "/config/hosts/${config.networking.hostName}/config.nix";
  etc = {};
  extraInit = ''
  '';
  extraOutputsToInstall = [];
  interactiveShellInit = ''
  '';
  launchAgents = {};
  launchDaemons = {};
  loginShell = "\$SHELL";
  loginShellInit = ''
  '';
  pathsToLink = [ "/share/doc" ];
  postBuild = ''
  '';
  profiles = [];
  shellAliases = {};
  shellInit = ''
  '';
  shells = with pkgs;[ 
    fish
    zsh 
  ];
  systemPackages = (import ./system-packages.nix { inherit pkgs; });
  systemPath = [];
  userLaunchAgents = {};
  variables = {};
}
