{ pkgs, ... }:

{

  enable = true;
  compression = true;
  extraConfig = ''
    Host github.com
      Hostname ssh.github.com
      IdentityFile ~/.ssh/id_rsa
      Port 443
      User git

    Host gitlab.com
      Hostname altssh.github.com
      IdentityFile ~/.ssh/id_rsa
      Port 443
      User git

    Host bhco.github.com
      Hostname ssh.github.com
      IdentityFile ~/.ssh/blockhenge/id_rsa
      Port 443
      User git

    Host bhco.gitlab.com
      Hostname altssh.github.com
      IdentityFile ~/.ssh/blockhenge/id_rsa
      Port 443
      User git

    Host finbotsdev.github.com
      Hostname ssh.github.com
      IdentityFile ~/.ssh/finbotsdev/id_rsa
      Port 443
      User git

    Host finbotsdev.gitlab.com
      Hostname altssh.gitlab.com
      IdentityFile ~/.ssh/finbotsdev/id_rsa
      Port 443
      User git

    Host fldv.github.com
      Hostname ssh.github.com
      IdentityFile ~/.ssh/blockhenge/id_rsa
      Port 443
      User git

    Host fldv.gitlab.com
      Hostname altssh.github.com
      IdentityFile ~/.ssh/blockhenge/id_rsa
      Port 443
      User git

    Host opsbot.github.com
      Hostname ssh.github.com
      IdentityFile ~/.ssh/opsbot/id_rsa
      Port 443
      User git

    Host opsbot.gitlab.com
      Hostname altssh.gitlab.com
      IdentityFile ~/.ssh/opsbot/id_rsa
      Port 443
      User git

    Host russelltsherman.github.com
      Hostname ssh.github.com
      IdentityFile ~/.ssh/russelltsherman/id_rsa
      Port 443
      User git

    Host russelltsherman.gitlab.com
      Hostname altssh.gitlab.com
      IdentityFile ~/.ssh/russelltsherman/id_rsa
      PreferredAuthentications publickey
      Port 443
      User git

    Host unionpos.github.com
      Hostname ssh.github.com
      IdentityFile ~/.ssh/unionpos/id_rsa
      Port 443
      User git
  '';
  extraOptionOverrides = {};
  forwardAgent = false;
  hashKnownHosts = false;
  matchBlocks = {};

}
