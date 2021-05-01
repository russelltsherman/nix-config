{ pkgs, ... }:

{

  enable = true;

}


# programs.neomutt.binds # List of keybindings.
# Type: list of submodules
# Default: [ ]

# programs.neomutt.binds.*.action # Specify the action to take.
# Type: string
# Example: "<enter-command>toggle sidebar_visible<enter><refresh>"

# programs.neomutt.binds.*.key # The key to bind.
# Type: string
# Example: "<left>"

# programs.neomutt.binds.*.map # Select the menu to bind the command to.
# Type: one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime" or list of one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime"s
# Default: "index"

# programs.neomutt.checkStatsInterval # Enable and set the interval of automatic mail check.
# Type: null or signed integer
# Default: null
# Example: 60

# programs.neomutt.editor # Select the editor used for writing mail.
# Type: string
# Default: "\$EDITOR"

# programs.neomutt.extraConfig # Extra configuration appended to the end.
# Type: strings concatenated with "\n"
# Default: ""
# Declared by:

# programs.neomutt.macros # List of macros.
# Type: list of submodules
# Default: [ ]

# programs.neomutt.macros.*.action # Specify the action to take.
# Type: string
# Example: "<enter-command>toggle sidebar_visible<enter><refresh>"

# programs.neomutt.macros.*.key # The key to bind.
# Type: string
# Example: "<left>"

# programs.neomutt.macros.*.map # Select the menu to bind the command to.
# Type: one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime" or list of one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime"s
# Default: "index"

# programs.neomutt.settings # Extra configuration appended to the end.
# Type: attribute set of strings
# Default: { }

# programs.neomutt.sidebar # Options related to the sidebar.
# Type: submodule
# Default: { }

# programs.neomutt.sidebar.enable # Whether to enable sidebar support.
# Type: boolean
# Default: false

# programs.neomutt.sidebar.format # Sidebar format. Check neomutt documentation for details.
# Type: string
# Default: "%B%?F? [%F]?%* %?N?%N/?%S"

# programs.neomutt.sidebar.shortPath # By default sidebar shows the full path of the mailbox, but with this enabled only the relative name is shown.
# Type: boolean
# Default: true

# programs.neomutt.sidebar.width # Width of the sidebar
# Type: signed integer
# Default: 22

# programs.neomutt.sort # Sorting method on messages.
# Type: one of "date", "date-received", "from", "mailbox-order", "score", "size", "spam", "subject", "threads", "to", "reverse-date", "reverse-date-received", "reverse-from", "reverse-mailbox-order", "reverse-score", "reverse-size", "reverse-spam", "reverse-subject", "reverse-threads", "reverse-to"
# Default: "threads"

# programs.neomutt.vimKeys # Enable vim-like bindings.
# Type: boolean
# Default: false
