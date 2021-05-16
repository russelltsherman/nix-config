{ pkgs, ... }:

{

  enable = true;
  extraConfig = ''
    # set nocompatible
    # set nobackup
  '';
  extraPackages = with pkgs; [
    shfmt
  ];
  extraPython3Packages = ps: with ps; [
    python-language-server
  ];
  plugins = with pkgs.vimPlugins; [
    # yankring
    # vim-nix
    # { plugin = vim-startify;
    #   config = "let g:startify_change_to_vcs_root = 0";
    # }
  ];
  viAlias = false;
  vimAlias = false;
  vimdiffAlias = false;
  withNodeJs = false;
  withPython3 = true;
  withRuby = false;

}
