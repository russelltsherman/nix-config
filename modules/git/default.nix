{ pkgs, ... }:

{
  aliases = {
    br = "branch -a";
    co = "checkout";
    s = "status -s -u";
    st = "status";
    c = "commit";
    cam = "commit -a -m";
    es = "!git pull --rebase && git push";
    lf = "log --pretty=fuller";
    ph = "push";
    pl = "pull";
    sync = "!git pull && git push";
    who = "shortlog -s --";
  };
  attributes = [
    "*          text=auto"
    "*.bibtex   text diff=bibtex"
    "*.doc      diff=astextplain"
    "*.DOC      diff=astextplain"
    "*.docx     diff=astextplain"
    "*.DOCX     diff=astextplain"
    "*.dot      diff=astextplain"
    "*.DOT      diff=astextplain"
    "*.pdf      diff=astextplain"
    "*.PDF      diff=astextplain"
    "*.rtf      diff=astextplain"
    "*.RTF      diff=astextplain"
    "*.md       text diff=markdown"
    "*.tex      text diff=tex"
    "*.adoc     text"
    "*.textile  text"
    "*.mustache text"
    "*.csv      text"
    "*.tab      text"
    "*.tsv      text"
    "*.txt      text"
    "*.sql      text"
    "*.ps1      text eol=crlf"

    "*.png      binary"
    "*.jpg      binary"
    "*.jpeg     binary"
    "*.gif      binary"
    "*.tif      binary"
    "*.tiff     binary"
    "*.ico      binary"
    "*.svg      text"
    "*.eps      binary"

    "*.bash     text eol=lf"
    "*.fish     text eol=lf"
    "*.sh       text eol=lf"
    "*.bat      text eol=crlf"
    "*.cmd      text eol=crlf"

    "*.json     text"
    "*.toml     text"
    "*.xml      text"
    "*.yaml     text"
    "*.yml      text"

    "*.7z       binary"
    "*.gz       binary"
    "*.tar      binary"
    "*.tgz      binary"
    "*.zip      binary"

    "*.patch    -text"
    ".gitattributes export-ignore"
    ".gitignore     export-ignore"
    ".gitkeep       export-ignore"
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
    init = {
      defaultBranch = "main";
    };
    pull = {
      rebase = true;
    };
    url = {
      "git@github.com:" = {
        insteadOf = "https://github.com/";
        pushInsteadOf = "git://github.com/";
      };
      "git@gitlab.com:" = {
        insteadOf = "https://gitlab.com/";
        pushInsteadOf = "git://gitlab.com/";
      };
    };
  };
  ignores = [
    "# General"
    ".DS_Store"
    ".AppleDouble"
    ".LSOverride"

    "# Icon must end with two \r"
    "Icon"

    "# Thumbnails"
    "._*"

    "# Files that might appear in the root of a volume"
    ".DocumentRevisions-V100"
    ".fseventsd"
    ".Spotlight-V100"
    ".TemporaryItems"
    ".Trashes"
    ".VolumeIcon.icns"
    ".com.apple.timemachine.donotpresent"

    "# Directories potentially created on remote AFP share"
    ".AppleDB"
    ".AppleDesktop"
    "Network Trash Folder"
    "Temporary Items"
    ".apdisk"

    "# ignore vim cache files"
    "*~"
    "*.swp"
    "*.swo"

    "# ignore vscode project config"
    ".vscode/*"

    "# ignore .history cache"
    ".history/*"

    "# ignore TODO files"
    "TODO*"
    "NOTE* "
  ];
  includes = [
    # { path = "~/path/to/config.inc"; }
    {
      # reference different user config for repos in github.com/finbotsdev directory
      path = "/Users/russellsherman/src/github.com/finbotsdev/.gitconfig";
      condition = "gitdir:/Users/russellsherman/src/github.com/finbotsdev/";
    }
    {
      # reference different user config for repos in github.com/opsbot directory
      path = "/Users/russellsherman/src/github.com/opsbot/.gitconfig";
      condition = "gitdir:/Users/russellsherman/src/github.com/opsbot/";
    }
    {
      # reference different user config for repos in gitlab.com/bhco directory
      path = "/Users/russellsherman/src/gitlab.com/bhco/.gitconfig";
      condition = "gitdir:/Users/russellsherman/src/gitlab.com/bhco/";
    }
    {
      # reference different user config for repos in gitlab.com/fldv directory
      path = "/Users/russellsherman/src/gitlab.com/fldv/.gitconfig";
      condition = "gitdir:/Users/russellsherman/src/gitlab.com/fldv/";
    }
  ];
  lfs = {
    enable = false;
    skipSmudge = false;
  };
  package = pkgs.gitFull;
}

