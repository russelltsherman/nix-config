{ config, lib, pkgs, ... }:

{
  documentation = {
    enable = true;
    info.enable = true;
    man.enable = true;
  };
  environment = (import ./environment.nix { inherit config lib pkgs; });
  fonts =  (import ./fonts.nix { inherit pkgs; });
  home-manager = (import ./home-manager.nix { inherit config pkgs; });
  networking = (import ./networking.nix { inherit pkgs; });
  nix = (import ./nix.nix { inherit pkgs; });
  nixpkgs = (import ./nixpkgs.nix { inherit lib pkgs; });
  programs = (import ./programs.nix { inherit pkgs; });
  security = (import ./security.nix { inherit pkgs; });
  services = (import ./services.nix { inherit pkgs; });
  system = (import ./system.nix { inherit pkgs; });
  time.timeZone = "America/Chicago";
  users = (import ./users.nix { inherit pkgs; });
}
