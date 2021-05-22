{ pkgs, ... }:

let

  extras = [
    # ./extract.zsh
  ];
  extraInitExtra = builtins.foldl' (soFar: new: soFar + "\n" + builtins.readFile new) "" extras;

in

{
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  # enableVteIntegration = true; # not supported on darwin
  autocd = true;
  cdpath = [];
  defaultKeymap = "viins";
  dirHashes = {
    docs  = "$HOME/Documents";
    vids  = "$HOME/Videos";
    dl    = "$HOME/Downloads";
  };
  dotDir = ".zsh";
  envExtra = ''
    #!/usr/bin/env zsh

    #
    # Z Shell Startup File
    #

    # - `$ZDOTDIR/.zshenv`
    #   .zshenv is sourced on all invocations of the shell, unless the -f option is set.
    #   It should contain commands to set the command search path, plus other important environment variables.
    #   .zshenv should not contain commands that produce output or assume the shell is attached to a tty.

    # If ZDOTDIR is not set, then the value of HOME is used; this is the usual case.

    export XDG_CONFIG_HOME="$HOME/.config"
    [ -d "$XDG_CONFIG_HOME" ] || mkdir -p "$XDG_CONFIG_HOME" # ensure $XDG_CONFIG_HOME dir exists

    export ZDOTDIR="$HOME/.zsh"
    [ -d "$ZDOTDIR" ] || mkdir -p "$ZDOTDIR" # ensure $ZDOTDIR dir exists

    export ZDOTDEEDIR="$HOME/.zsh.d"
    [ -d "$ZDOTDEEDIR" ] || mkdir -p "$ZDOTDEEDIR" # ensure $ZDOTDEEDIR dir exists

    export ZDOTCACHEDIR="$HOME/.cache/zsh"
    [ -d "$ZDOTCACHEDIR" ] || mkdir -p "$ZDOTCACHEDIR" # ensure $ZDOTCACHEDIR dir exists

    # if user has a home bin directory add it to the path
    [ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"

    # if user has a home .local/bin directory add it to the path
    [ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"
  '';
  history = {
    extended = true;
    expireDuplicatesFirst = true;
    ignoreDups = true;
    ignoreSpace = true;
    path = "$ZDOTCACHEDIR/.zsh_history";
    save = 1000;
    share = true;
    size = 1000;
  };
  initExtra = ''
    # export TERM="xterm-256color"
    # bindkey -e
    # if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
    #   . ~/.nix-profile/etc/profile.d/nix.sh
    # fi
    # if [ -e ~/.nix-profile/etc/profile.d/hm-session-vars.sh ]; then
    #   . ~/.nix-profile/etc/profile.d/hm-session-vars.sh
    # fi

    ##############################################################################
    # source everything found in $ZDOTDEEDIR if the directory exists
    ##############################################################################
    # load local configuration stored in $ZDOTDEEDIR
    if [ -d $ZDOTDEEDIR ]
    then
      ORIG_COLLATE=$LC_COLLATE
      LC_COLLATE=C
      for i in $ZDOTDEEDIR/*.zsh
      do
        source $i
      done
      LC_COLLATE=$ORIG_COLLATE
    fi

    # nix update function
    nixup() {
      ( cd /config; git stash; git pull; git stash apply )
      nix upgrade-nix
      nix-channel --update
      NIXPKGS_ALLOW_UNFREE=1 /run/current-system/sw/bin/darwin-rebuild switch -I darwin-config=/config/hosts/$(hostname)/config.nix    
    }
  '' + extraInitExtra;
  initExtraBeforeCompInit = ''
  '';
  initExtraFirst = ''
  '';
  localVariables = {
    # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS = [ "dir" "vcs" ] ;
  };
  loginExtra = ''
    #!/usr/bin/env zsh
    # if pfetch command is istalled AND ENABLED call it once on login
    [ $commands[pfetch] ] && [[ "$PFETCH_ENABLE" == "true" ]] && pfetch
  '';
  logoutExtra = ''
  '';
  plugins = [
    # {
    #   name = "enhancd";
    #   file = "init.sh";
    #   src = pkgs.fetchFromGitHub {
    #     owner = "b4b4r07";
    #     repo = "enhancd";
    #     rev = "v2.2.1";
    #     sha256 = "0iqa9j09fwm6nj5rpip87x3hnvbbz9w9ajgm6wkrd5fls8fn8i5g";
    #   };
    # }
    # {
    #   name = "zsh-autosuggestions";
    #   src = pkgs.fetchFromGitHub {
    #     owner = "zsh-users";
    #     repo = "zsh-autosuggestions";
    #     rev = "v0.4.0";
    #     sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
    #   };
    # }
  ];
  profileExtra = ''
  '';
  sessionVariables = {
    # EDITOR = "vi";
    # FOO = "bar";
  };
  shellAliases = {
    garbage = "nix-collect-garbage -d && docker image prune --force";
    # ll = "ls -l";
    # ".." = "cd ..";
  };
  shellGlobalAliases = {
    # UUID = "$(uuidgen | tr -d \\n)";
    # G = "| grep";
  };

}

# programs.zsh.enableCompletion # Enable zsh completion. Don't forget to add
#   environment.pathsToLink = [ "/share/zsh" ];

# programs.zsh.cdpath # List of paths to autocomplete calls to `cd`.
