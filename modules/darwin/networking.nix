{ pkgs, ... }:
{
  dns = [
    "1.1.1.1"
    "1.0.0.1"
  ];
  # hostname = null;
  knownNetworkServices = [ 
    "Wi-Fi" 
    "Ethernet Adaptor" 
  ];
  search = [];
}
