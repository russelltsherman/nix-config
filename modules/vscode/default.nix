{ pkgs, ... }:

{

  enable = true;
  extensions = with pkgs.vscode-extensions; [
    # amazonwebservices.aws-toolkit-vscode
    mikestead.dotenv
    bbenoist.Nix
    # bradymholt.pgformatter
    # budparr.language-hugo-vscode
    # bungcip.better-toml
    # CoenraadS.bracket-pair-colorizer
    # coolbear.systemd-unit-file
    # cssho.vscode-svgviewer
    # DavidAnson.vscode-markdownlint
    # DavidWang.ini-for-vscode
    # dbaeumer.vscode-eslint
    # dunstontc.viml
    # eamodio.gitlens
    # EditorConfig.EditorConfig
    # esbenp.prettier-vscode
    # formulahendry.auto-close-tag
    # ginfuru.ginfuru-better-solarized-dark-theme
    golang.Go
    # heptio.jsonnet
    # HookyQR.beautify
    # huizhou.githd
    # idleberg.applescript
    # JPTarquino.postgresql
    # marcostazi.VS-code-vagrantfile
    # mark-tucker.aws-cli-configure
    # ms-azuretools.vscode-docker
    ms-kubernetes-tools.vscode-kubernetes-tools
    # ms-toolsai.jupyter
    # msjsdiag.debugger-for-chrome
    # PKief.material-icon-theme
    # redhat.vscode-yaml
    # ritwickdey.LiveServer
    # timonwong.shellcheck
    # tomoki1207.pdf
    # tomphilbin.gruvbox-themes
    # vscoss.vscode-ansible
    hashicorp.terraform
    WakaTime.vscode-wakatime
    # wholroyd.HCL
    wholroyd.jinja
    # wingrunr21.vscode-ruby
    # xabikos.JavaScriptSnippets
    xaver.clang-format
    # zxh404.vscode-proto3
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
