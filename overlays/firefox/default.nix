{ stdenv, fetchurl, lib, undmg }:

stdenv.mkDerivation rec {
  pname = "Firefox";
  version = "84.0.1";

  buildInputs = [ undmg ];
  sourceRoot = ".";
  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir -p "$out/Applications"
    cp -r Firefox.app "$out/Applications/Firefox.app"
  '';

  src = fetchurl {
    name = "Firefox-${version}.dmg";
    url = "https://download-installer.cdn.mozilla.net/pub/firefox/releases/${version}/mac/en-GB/Firefox%20${version}.dmg";
    sha256 = "0grcqs5jma22agbf9992icz6pdc2hbn6wxbqap6imxrm2w8jxpzp";
  };

  meta = {
    description = "The Firefox web browser";
    homepage = "https://www.mozilla.org/en-GB/firefox";
    maintainers = [ lib.maintainers.cmacrae ];
    platforms = lib.platforms.darwin;
  };
}
