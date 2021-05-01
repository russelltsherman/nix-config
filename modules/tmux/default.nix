{ pkgs, ... }:

let
  kubeTmux = pkgs.fetchFromGitHub {
    owner = "jonmosco";
    repo = "kube-tmux";
    rev = "7f196eeda5f42b6061673825a66e845f78d2449c";
    sha256 = "1dvyb03q2g250m0bc8d2621xfnbl18ifvgmvf95nybbwyj2g09cm";
  };

  tmuxYank = pkgs.fetchFromGitHub {
    owner = "tmux-plugins";
    repo = "tmux-yank";
    rev = "ce21dafd9a016ef3ed4ba3988112bcf33497fc83";
    sha256 = "04ldklkmc75azs6lzxfivl7qs34041d63fan6yindj936r4kqcsp";
  };

in 

{

  enable = true;
  package = pkgs.tmux;
  aggressiveResize = false;
  baseIndex = 0;
  clock24 = true;
  customPaneNavigationAndResize = false;
  disableConfirmationPrompt = false;
  escapeTime = 500;
  extraConfig = ''
    setw -g mode-keys vi                                   # act like vim
    # set -g prefix C-s                                      # set command prefix to Ctrl-s
    # bind C-s send-prefix                                   # allow sending Ctrl-s to shell
    # unbind C-b                                             # unbind default prefix
    set -g base-index 1                                    # number windows starting from 1
    set -g escape-time 20                                  # shorten the escape time
    bind r source-file ~/.tmux.conf\; display "Reloaded!"  #reload configuration
    bind | split-window -h -c '#{pane_current_path}'       #split window horizontally
    bind - split-window -v -c '#{pane_current_path}'       #split window vertically
    bind h select-pane -L                                  #vim style pane navigation
    bind j select-pane -D                                  #vim style pane navigation
    bind k select-pane -U                                  #vim style pane navigation
    bind l select-pane -R                                  #vim style pane navigation
    bind -r C-h select-wind -t :-                          #previous window
    bind -r C-l select-wind -t :+                          #next window
    bind -r H resize-pane -L 5                             #pane resizing
    bind -r J resize-pane -D 5                             #pane resizing
    bind -r K resize-pane -U 5                             #pane resizing
    bind -r L resize-pane -R 5                             #pane resizing

    # toggle synchronize panes (send keystrokes to all panes)
    bind e setw synchronize-panes on
    bind E setw synchronize-panes off

    set -g status-left-length 100
    set -g status-left "#(${pkgs.bash}/bin/bash ${kubeTmux}/kube.tmux 250 green colour3)  "
    set -g status-right-length 100
    set -g status-right "#[fg=red,bg=default] %b %d #[fg=blue,bg=default] %R "
    set -g status-bg default
    setw -g window-status-format "#[fg=blue,bg=black] #I #[fg=blue,bg=black] #W "
    setw -g window-status-current-format "#[fg=blue,bg=default] #I #[fg=red,bg=default] #W "

    run-shell ${tmuxYank}/yank.tmux
  '';
  historyLimit = 2000;
  keyMode = "vi";
  newSession = false;
  plugins = with pkgs; [
    # tmuxPlugins.cpu
    # {
    #   plugin = tmuxPlugins.resurrect;
    #   extraConfig = "set -g @resurrect-strategy-nvim 'session'";
    # }
    # {
    #   plugin = tmuxPlugins.continuum;
    #   extraConfig = ''
    #     set -g @continuum-restore 'on'
    #     set -g @continuum-save-interval '60' # minutes
    #   '';
    # }
  ];
  prefix = "C-a";
  resizeAmount = 5;
  reverseSplit = false;
  secureSocket = true;
  sensibleOnTop = true;
  shell = "${pkgs.zsh}/bin/zsh";
  shortcut = "b";
  terminal = "screen-256color";
  tmuxinator.enable = false;
  tmuxp.enable = false;

}
