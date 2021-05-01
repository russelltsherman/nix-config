{ pkgs, ... }:

{
  enable = true;
}

# programs.chromium.package # The Chromium package to use.
# Type: package # Default: pkgs.chromium

# programs.chromium.extensions # List of Chromium extensions to install. To find the extension ID, check its URL on the Chrome Web Store.
# To install extensions outside of the Chrome Web Store set updateUrl or crxPath and version as explained in the Chrome documentation.
# Type: list of submodule or string convertible to its # Default: [ ]

# programs.chromium.extensions.*.crxPath # Path to the extension's crx file. Linux only.
# Type: null or path # Default: null

# programs.chromium.extensions.*.id # The extension's ID from the Chome Web Store url or the unpacked crx.
# Type: string matching the pattern [a-zA-Z]{32} # Default: ""

# programs.chromium.extensions.*.updateUrl # URL of the extension's update manifest XML file. Linux only.
# Type: string # Default: "https://clients2.google.com/service/update2/crx"

# programs.chromium.extensions.*.version # The extension's version, required for local installation. Linux only.
# Type: null or string # Default: null
