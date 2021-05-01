{ pkgs, ... }:

{
  enable = true;

}

# programs.beets.enable # Whether to enable the beets music library manager. This defaults to false for state version ≥ 19.03. For earlier versions beets is enabled if programs.beets.settings is non-empty.
# Type: boolean # Default: "false"

# programs.beets.package # The beets package to use. Can be used to specify extensions.
# Type: package # Default: pkgs.beets

# programs.beets.settings # Configuration written to ~/.config/beets/config.yaml
# Type: YAML value # Default: { }
