{ pkgs, ... }:
{
  bash = {
    enable = true;
    enableCompletion = true;
    interactiveShellInit = ''
    '';
  };
  fish = {
    enable = true;
    interactiveShellInit = ''
    '';
    loginShellInit = ''
    '';
    promptInit = ''
    '';
    shellAliases = {};
    shellInit = ''
    '';
  };
  gnupg = {
    agent = {
      enable = false;
      enableSSHSupport = false;
    };
  };
  info.enable = true;
  man.enable = true;
  nix-index.enable = true;
  ssh.knownHosts = {};
  tmux = {
    enable = true;
    enableFzf = true;
    enableMouse = true;
    enableSensible = true;
    enableVim = true;
    # defaultCommand = 
    extraConfig = ''
    '';
  };
  zsh = {
    enable = true;
    enableBashCompletion = true;
    enableCompletion = true;
    enableFzfCompletion = true;
    enableFzfGit = true;
    enableFzfHistory = true;
    enableSyntaxHighlighting = true;
    interactiveShellInit = ''
    '';
    loginShellInit = ''
    '';
    promptInit = ''
    '';
    shellInit = ''
    '';
    variables = {};
};
}
