{ pkgs, ... }:
{
  agents = {};
  daemons = {};
  envVariables = {};
  user = {
    agents = {
      spacebar = {
        serviceConfig = {
          StandardErrorPath = "/tmp/spacebar.err.log";
          StandardOutPath = "/tmp/spacebar.out.log";
        };
      };
    };
    envVariables = {};
  };
}
