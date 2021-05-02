{ pkgs, ... }:

{

  enable = true;
  homedir = "${builtins.getEnv "HOME"}/.gnupg";
  settings = {
    no-emit-version = true;
    no-comments = true;
    export-options = "export-minimal";
    keyid-format = "0xlong";
    with-fingerprint = true;
    list-options = "show-uid-validity";
    verify-options = "show-uid-validity";
    personal-cipher-preferences = "AES256";
    personal-digest-preferences = "SHA512";
    default-preference-list = "SHA512 SHA384 SHA256 RIPEMD160 AES256 TWOFISH BLOWFISH ZLIB BZIP2 ZIP Uncompressed";
    cipher-algo = "AES256";
    digest-algo = "SHA512";
    cert-digest-algo = "SHA512";
    compress-algo = "ZLIB";
    disable-cipher-algo = "3DES";
    weak-digest = "SHA1";
    s2k-cipher-algo = "AES256";
    s2k-digest-algo = "SHA512";
    s2k-mode = "3";
  };

}
