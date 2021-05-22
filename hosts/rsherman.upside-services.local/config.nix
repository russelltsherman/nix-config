{ lib, config, pkgs, ...}:

{
  imports = lib.attrValues (import ../../modules);

  networking.hostName = "rsherman.upside-services.local";

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
            userEmail = "russell.sherman@getupside.com";
            userName = "Russell Sherman";
            extraConfig = {
              github = {
                user = "russelltsherman";
              };
            };
          };
        };
      };
    };
  };
  # services.spacebar.config.space_icon_strip = "    ";
}
