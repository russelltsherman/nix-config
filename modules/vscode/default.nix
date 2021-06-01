{ pkgs, ... }:

{

  enable = true;
  extensions = with pkgs.vscode-extensions; [
    bbenoist.Nix
    golang.Go
    mikestead.dotenv
    redhat.vscode-yaml
    hashicorp.terraform
    timonwong.shellcheck
    esbenp.prettier-vscode
    dbaeumer.vscode-eslint
    codezombiech.gitignore
    WakaTime.vscode-wakatime
    editorconfig.editorconfig
    davidanson.vscode-markdownlint

    coenraads.bracket-pair-colorizer-2
    # naumovs.color-highlight
    # ibm.output-colorizer

    # jock.svg
    # redhat.java
    # vscodevim.vim
    # wholroyd.jinja
    # tomoki1207.pdf
    # rubbersheep.gi
    # spywhere.guides
    # haskell.haskell
    # eamodio.gitlens
    # cmschuetz12.wal
    # scalameta.metals
    # scala-lang.scala
    # hookyqr.beautify
    # dhall.dhall-lang
    # xyz.local-history
    # tyriar.sort-lines
    # serayuzgur.crates
    # xaver.clang-format
    # jnoortheen.nix-ide
    # dotjoshjohnson.xml
    # antfu.icons-carbon
    # a5huynh.vscode-ron
    # skyapps.fish-vscode
    # ryu1kn.partial-diff
    usernamehw.errorlens
    # matklad.rust-analyzer
    # gruntfuggly.todo-tree
    # freebroccolo.reasonml
    # file-icons.file-icons
    # alygin.vscode-tlaplus
    # graphql.vscode-graphql
    # tamasfe.even-better-toml
    # ocamllabs.ocaml-platform
    # mskelton.one-dark-theme
    # ms-python.vscode-pylance
    # mechatroner.rainbow-csv
    # james-yu.latex-workshop
    # iciclesoft.workspacesort
    # elmtooling.elm-ls-vscode
    # donjayamanne.githistory
    # baccata.scaladex-search
    # alanz.vscode-hie-server
    # zhuangtongfa.material-theme
    # yzhang.markdown-all-in-one
    # vincaslt.highlight-matching-tag
    # streetsidesoftware.code-spell-checker
    # slevesque.vscode-multiclip
    # shyykoserhiy.vscode-spotify
    # rubymaniac.vscode-paste-and-indent
    # pkief.material-icon-theme
    # msjsdiag.debugger-for-chg
    # emmanuelbeziat.vscode-great-icons
    # edonet.vscode-command-runner
    # dracula-theme.theme-dracula
    # dhall.vscode-dhall-lsp-server
    # brettm12345.nixfmt-vscode
    # alexdima.copy-relative-path
    # ms-vscode-remote.remote-ssh
    # ms-kubernetes-tools.vscode-kubernetes-tools
    # ms-azuretools.vscode-docker
    # mishkinf.goto-next-previous-member
    # justusadam.language-haskell
    # jpoissonnier.vscode-styled-components
    # github.vscode-pull-request-github
    # github.github-vscode-theme
    # foxundermoon.shell-format
    # formulahendry.code-runner
    # formulahendry.auto-rename-tag
    # formulahendry.auto-close-ta
  ];
  keybindings = [
    # {
    #   key = "ctrl+c";
    #   command = "editor.action.clipboardCopyAction";
    #   when = "textInputFocus";
    # }
  ];
  userSettings = {
    # "update.channel" = "none";
    # "[nix]"."editor.tabSize" = 2;
  };

}

# programs.vscode.package # Version of Visual Studio Code to install.
# Type: package
# Default: (build of vscode-1.55.2)

# programs.vscode.haskell.enable # Whether to enable Haskell integration for Visual Studio Code.
# Type: boolean
# Default: false
