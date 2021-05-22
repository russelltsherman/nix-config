{ lib, config, pkgs, ...}:

{
  imports = lib.attrValues (import ../../modules);

  networking.hostName = "phoenix";

  home-manager = {
    users = {
      russellsherman = {
        programs = {
          git = {
            signing = {
              key = "0x1E80E57DFCB96229";
              gpgPath = "gpg";
              signByDefault = false;
            };
            userEmail = "russell.t.sherman@gmail.com";
            userName = "Russell Sherman";
          };
        };
      };
    };
  };

  # services.spacebar.config.space_icon_strip = "    ";
}
