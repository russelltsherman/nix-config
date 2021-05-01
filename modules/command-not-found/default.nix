{ pkgs, ... }:

{
  enable = false;
  dbPath = "/nix/var/nix/profiles/per-user/root/channels/nixos/programs.sqlite";
}

# programs.command-not-found.enable # Whether to enable command-not-found hook for interactive shell.
# Type: boolean # Default: false

# programs.command-not-found.dbPath # Absolute path to programs.sqlite. By default this file will be provided by your channel (nixexprs.tar.xz).
# Type: path # Default: "/nix/var/nix/profiles/per-user/root/channels/nixos/programs.sqlite"
