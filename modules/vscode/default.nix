{ pkgs, ... }:

{

  enable = true;
  extensions = with pkgs.vscode-extensions; [
    jock.svg
    golang.Go
    redhat.java
    bbenoist.Nix
    vscodevim.vim
    wholroyd.jinja
    tomoki1207.pdf
    rubbersheep.gi
    spywhere.guides
    haskell.haskell
    eamodio.gitlens
    cmschuetz12.wal
    scalameta.metals
    scala-lang.scala
    mikestead.dotenv
    hookyqr.beautify
    dhall.dhall-lang
    xyz.local-history
    tyriar.sort-lines
    serayuzgur.crates
    xaver.clang-format
    redhat.vscode-yaml
    jnoortheen.nix-ide
    dotjoshjohnson.xml
    antfu.icons-carbon
    a5huynh.vscode-ron
    skyapps.fish-vscode
    ryu1kn.partial-diff
    hashicorp.terraform
    usernamehw.errorlens
    timonwong.shellcheck
    ibm.output-colorizer
    matklad.rust-analyzer
    gruntfuggly.todo-tree
    freebroccolo.reasonml
    file-icons.file-icons
    alygin.vscode-tlaplus
    graphql.vscode-graphql
    esbenp.prettier-vscode
    dbaeumer.vscode-eslint
    codezombiech.gitignore
    tamasfe.even-better-toml
    ocamllabs.ocaml-platform
    naumovs.color-highlight
    mskelton.one-dark-theme
    ms-python.vscode-pylance
    mechatroner.rainbow-csv
    james-yu.latex-workshop
    iciclesoft.workspacesort
    elmtooling.elm-ls-vscode
    donjayamanne.githistory
    baccata.scaladex-search
    alanz.vscode-hie-server
    WakaTime.vscode-wakatime
    zhuangtongfa.material-theme
    yzhang.markdown-all-in-one
    vincaslt.highlight-matching-tag
    streetsidesoftware.code-spell-checker
    slevesque.vscode-multiclip
    shyykoserhiy.vscode-spotify
    rubymaniac.vscode-paste-and-indent
    pkief.material-icon-theme
    msjsdiag.debugger-for-chrome
    ms-vscode-remote.remote-ssh
    ms-kubernetes-tools.vscode-kubernetes-tools
    ms-azuretools.vscode-docker
    mishkinf.goto-next-previous-member
    justusadam.language-haskell
    jpoissonnier.vscode-styled-components
    github.vscode-pull-request-github
    github.github-vscode-theme
    foxundermoon.shell-format
    formulahendry.code-runner
    formulahendry.auto-rename-tag
    formulahendry.auto-close-tag
    emmanuelbeziat.vscode-great-icons
    edonet.vscode-command-runner
    editorconfig.editorconfig
    dracula-theme.theme-dracula
    dhall.vscode-dhall-lsp-server
    davidanson.vscode-markdownlint
    coenraads.bracket-pair-colorizer-2
    brettm12345.nixfmt-vscode
    alexdima.copy-relative-path
    CoenraadS.bracket-pair-colorizer
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
