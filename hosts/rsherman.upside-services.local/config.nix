{ lib, config, pkgs, ...}:

{
  imports = lib.attrValues (import ../../modules);

  networking.hostName = "phoenix";

  # home-manager.users.cmacrae.programs.git.userName = "Calum MacRae";
  # services.spacebar.config.space_icon_strip = "    ";
}
