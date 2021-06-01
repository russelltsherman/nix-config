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
    systemPackages = with pkgs; [ 
      ack
      antibody
      aspell
      aspellDicts.en
      aspellDicts.en-computers
      bat
      bc
      bind
      coreutils
      clang
      curl 
      findutils
      fish
      fontconfig
      fzf
      graphviz
      gawk
      # gcc 
      gnugrep
      gnumake
      gnupg
      gnused
      htop
      hugo
      jq
      ncdu
      # nixops
      nix-prefetch-git
      nmap
      nodejs
      oathToolkit
      pinentry_mac
      pv
      python3Full
      ripgrep
      rsync
      ruby_3_0
      screen
      sshpass
      tldr
      tree
      unzip
      vim
      wget
      which
      yarn
      yq
      zsh 
    ];
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
  home-manager = {
    users = {
      russellsherman = {
        accounts.email.accounts = {};
        dconf.settings = {};
        fonts.fontconfig.enable = true;
        home = {
          activation = {};
          enableDebugInfo = true;
          extraOutputsToInstall = [ "doc" "info" "devdoc" ];
          file = {};
          packages = (import ./user-packages.nix { inherit pkgs; });
          sessionVariables = {
            PAGER = "less -R";
            EDITOR = "vi";
          };
        };
        programs = {
          alacritty = (import ./../alacritty { inherit pkgs; });
          autojump = (import ./../autojump { inherit pkgs; });
          bash = (import ./../bash { inherit pkgs; });
          bat = (import ./../bat { inherit pkgs; });
          # beets = (import ./../beets { inherit pkgs; });
          broot = (import ./../broot { inherit pkgs; });
          browserpass = (import ./../browserpass { inherit pkgs; });
          # chromium = (import ./../chromium { inherit pkgs; });
          command-not-found = (import ./../command-not-found { inherit pkgs; });
          dircolors = (import ./../dircolors { inherit pkgs; });
          direnv = (import ./../direnv { inherit pkgs; });
          exa = (import ./../exa { inherit pkgs; });
          firefox = (import ./../firefox { inherit config pkgs; });
          fish = (import ./../fish { inherit pkgs; });
          fzf = (import ./../fzf { inherit pkgs; });
          git = (import ./../git { inherit pkgs; });
          go = (import ./../go { inherit pkgs; });
          gpg = (import ./../gpg { inherit pkgs; });
          htop = (import ./../htop { inherit pkgs; });
          irssi = (import ./../irssi { inherit pkgs; });
          jq = (import ./../jq { inherit pkgs; });
          keychain = (import ./../keychain { inherit pkgs; });
          mcfly = (import ./../mcfly { inherit pkgs; });
          neomutt = (import ./../neomutt { inherit pkgs; });
          neovim = (import ./../neovim { inherit pkgs; });
          newsboat = (import ./../newsboat { inherit pkgs; });
          pazi = (import ./../pazi { inherit pkgs; });
          pet = (import ./../pet { inherit pkgs; });
          readline = (import ./../readline { inherit pkgs; });
          ssh = (import ./../ssh { inherit pkgs; });
          taskwarrior = (import ./../taskwarrior { inherit pkgs; });
          tmux = (import ./../tmux { inherit pkgs; });
          vscode = (import ./../vscode { inherit pkgs; });
          zsh = (import ./../zsh { inherit pkgs; });
        };
      };
    };
  };
  launchd = {
    agents = {};
    daemons = {};
    envVariables = {};
    user = {
      agents = {
        spacebar = {
          serviceConfig = {
            StandardErrorPath = "/tmp/spacebar.err.log";
            StandardOutPath = "/tmp/spacebar.out.log";
          };
        };
      };
      envVariables = {};
    };
  };
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
  };
}
