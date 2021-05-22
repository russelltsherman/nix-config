{ config, lib, pkgs, ... }:

{
  documentation = {
    enable = true;
    info.enable = true;
    man.enable = true;
  };
  environment = {
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
  };
  fonts = {
    enableFontDir = true;
    fonts = with pkgs; [ 
      emacs-all-the-icons-fonts 
      fira-code 
      fira-mono
      font-awesome 
      hack-font
      inconsolata
      roboto 
      roboto-mono 
    ];
  };
  home-manager = (import ./home-manager.nix { inherit config pkgs; });
  networking = {
    dns = [
      "1.1.1.1"
      "1.0.0.1"
    ];
    # hostname = null;
    knownNetworkServices = [ 
      "Wi-Fi" 
      "Ethernet Adaptor" 
    ];
    search = [];
  };
  nix = {
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
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
      packageOverrides = pkgs: {
        nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
          inherit pkgs;
        };
      };
    };
    overlays = [ (import ../../overlays) ];
    system = "x86_64-darwin";
  };
  programs = {
    bash = {
      enable = true;
      enableCompletion = true;
      interactiveShellInit = ''
      '';
    };
    fish = {
      enable = true;
      interactiveShellInit = ''
      '';
      loginShellInit = ''
      '';
      promptInit = ''
      '';
      shellAliases = {};
      shellInit = ''
      '';
    };
    gnupg = {
      agent = {
        enable = false;
        enableSSHSupport = false;
      };
    };
    info.enable = true;
    man.enable = true;
    nix-index.enable = true;
    ssh.knownHosts = {};
    tmux = {
      enable = true;
      enableFzf = true;
      enableMouse = true;
      enableSensible = true;
      enableVim = true;
      # defaultCommand = 
      extraConfig = ''
      '';
    };
    zsh = {
      enable = true;
      enableBashCompletion = true;
      enableCompletion = true;
      enableFzfCompletion = true;
      enableFzfGit = true;
      enableFzfHistory = true;
      enableSyntaxHighlighting = true;
      interactiveShellInit = ''
      '';
      loginShellInit = ''
      '';
      promptInit = ''
      '';
      shellInit = ''
      '';
      variables = {};
    };
  };
  security = {
    pki = {
      caCertificateBlacklist = [];
      certificateFiles = [];
      certificates = [];
    };
    sandbox = {
      profiles = {};
    };
  };
  services = {
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
  };
  system = (import ./system.nix { inherit pkgs; });
  time.timeZone = "America/Chicago";
  users = {
    groups = {};
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
        home = builtins.getEnv("HOME");
        shell = pkgs.zsh;
      };
    };
  };
}
