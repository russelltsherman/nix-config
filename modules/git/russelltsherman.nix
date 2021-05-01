{ pkgs, ... }:

{
  aliases = {
    co = "checkout";
  };
  attributes = [
    "*.pdf diff=pdf"
  ];
  delta = {
    enable = true;
    options = {
      decorations = {
        commit-decoration-style = "bold yellow box ul";
        file-decoration-style = "none";
        file-style = "bold yellow ul";
      };
      features = "decorations";
      whitespace-error-style = "22 reverse";
    };
  };
  enable = true;
  extraConfig = {
    core = {
      editor = "vi";
    };
    github = {
      user = "russelltsherman";
    };
    pull = {
      rebase = true;
    };
    url = {
      "git@github.com:" = {
        insteadOf = "https://github.com/";
      };
    };
  };
  ignores = [
    # "*~"
    # ".DS_Store"
  ];
  includes = [
    # { path = "~/path/to/config.inc"; }
    # {
    #   path = "~/path/to/conditional.inc";
    #   condition = "gitdir:~/src/dir";
    # }
  ];
  lfs = {
    enable = false;
    skipSmudge = false;
  };
  package = pkgs.git;
  signing = {
    # key = "1234ABCD";
    # gpgPath = "\${pkgs.gnupg}/bin/gpg2";
    # signByDefault = true;
  };
  userEmail = "russell.t.sherman@gmail.com";
  userName = "Russell Sherman";
}

