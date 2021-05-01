{ pkgs, ... }:

{
  enable = true;
}

# programs.bash.enable # Whether to enable GNU Bourne-Again SHell.
# Type: boolean # Default: false

# programs.bash.enableVteIntegration # Whether to enable integration with terminals using the VTE library. This will let the terminal track the current working directory.
# Type: boolean # Default: false

# programs.bash.bashrcExtra # Extra commands that should be placed in ~/.bashrc. Note that these commands will be run even in non-interactive shells.
# Type: strings concatenated with "\n" # Default: ""

# programs.bash.historyControl # Controlling how commands are saved on the history list.
# Type: list of one of "erasedups", "ignoredups", "ignorespace"s # Default: [ ]

# programs.bash.historyFile # Location of the bash history file.
# Type: null or string # Default: null

# programs.bash.historyFileSize # Number of history lines to keep on file.
# Type: signed integer # Default: 100000

# programs.bash.historyIgnore # List of commands that should not be saved to the history list.
# Type: list of strings # Default: [ ]

# programs.bash.historySize # Number of history lines to keep in memory.
# Type: signed integer # Default: 10000

# programs.bash.initExtra # Extra commands that should be run when initializing an interactive shell.
# Type: strings concatenated with "\n" # Default: ""

# programs.bash.logoutExtra # Extra commands that should be run when logging out of an interactive shell.
# Type: strings concatenated with "\n" # Default: ""

# programs.bash.profileExtra # Extra commands that should be run when initializing a login shell.
# Type: strings concatenated with "\n" # Default: ""

# programs.bash.sessionVariables # Environment variables that will be set for the Bash session.
# Type: attribute set # Default: { }

# programs.bash.shellAliases # An attribute set that maps aliases (the top level attribute names in this option) to command strings or directly to build outputs.
# Type: attribute set of strings # Default: { }

# programs.bash.shellOptions # Shell options to set.
# Type: list of strings # Default: [ "histappend" "checkwinsize" "extglob" "globstar" "checkjobs" ]
