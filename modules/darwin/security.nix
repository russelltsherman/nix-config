{ pkgs, ... }:
{
  pki = {
    caCertificateBlacklist = [];
    certificateFiles = [];
    certificates = [];
  };
  sandbox = {
    profiles = {};
  };
}
