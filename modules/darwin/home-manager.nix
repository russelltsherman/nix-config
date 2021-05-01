{ config, pkgs }:

{
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
        packages = with pkgs; [
          _1password
          argocd
          awscli2
          awslogs
          errcheck
          go
          go-outline
          go-symbols
          goa
          gocode
          gocode-gomod
          gocyclo
          godef
          goimports
          golangci-lint
          golint
          gomodifytags
          gopkgs
          gopls
          gotags
          gotools
          gox
          helmfile
          k9s
          kind
          kube-prompt
          kubecfg
          kubectl
          kubectx
          kubernetes-helm
          kubetail
          kubeval
          kustomize
          lazydocker
          lazygit
          minikube
          open-policy-agent
          python37
          python37Packages.pip
          python37Packages.python-language-server
          python37Packages.virtualenv
          skaffold
          tasksh
          wakatime
          watchman
          youtube-dl
        ];
        sessionVariables = {
          PAGER = "less -R";
          EDITOR = "emacsclient";
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
}
