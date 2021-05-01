{ pkgs, ... }:
{
  groups = {
    # groupname = {
    #   description = "";
    #   gid = "";
    #   members = [];
    #   name = "";
    # }
  };
  knownGroups = [];
  knownUsers = [];
  nix = {
    configureBuildUsers = false;
    nrBuildUsers = 32;
  };
  users = {
    russellsherman = {
      packages = [];
      createHome = true;
      # description = "";
      # gid = 20;
      home = builtins.getEnv("HOME");
      # isHidden = false;
      # name = null;
      shell = pkgs.fish;
      # uid = 
    };
  };
}
