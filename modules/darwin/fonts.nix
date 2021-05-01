{ pkgs, ... }:

{
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
}
