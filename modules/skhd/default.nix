{ pkgs, ... }:

{
    enable = true;
    skhdConfig = builtins.readFile ./skhd.conf;
}
