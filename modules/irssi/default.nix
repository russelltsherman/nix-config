{ pkgs, ... }:

{

  enable = true;
  aliases = {
    BYE = "quit";
    J = "join";
  };
  extraConfig = ''
  '';
  networks = {
    # freenode = {
    #   nick = "hmuser";
    #   server = {
    #     address = "chat.freenode.net";
    #     port = 6697;
    #     autoConnect = true;
    #   };
    #   channels = {
    #     nixos.autoJoin = true;
    #   };
    # };
  };

}
