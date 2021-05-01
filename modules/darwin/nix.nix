{ pkgs, ... }:
{
  allowedUsers = [ "*" ];
  binaryCachePublicKeys = [];
  binaryCaches = [];
  buildCores = 0;
  buildMachines = [];
  daemonIONice = false;
  daemonNiceLevel = 0;
  # distributedbuilds = false;
  extraOptions = ''
  '';
  gc = {
    automatic = false;
    interval = { 
      Hour = 3; 
      Minute = 15; 
    };
    options = "";
    user = null;
  };
  maxJobs = 8;
  # nixPath = "";
  package = pkgs.nix;
  readOnlyStore = true;
  requireSignedBinaryCaches = true;
  sandboxPaths = [];
  trustedBinaryCaches = [];
  trustedUsers = [ 
    "@staff" 
  ];
  useDaemon = false;
  useSandbox = false;
  # version
}
