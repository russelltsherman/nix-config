{ pkgs, ... }:

{

  enable = true;
  colorTheme = "dark-blue-256";
  config = {
    # confirmation = false;
    # report.minimal.filter = "status:pending";
    # report.active.columns = [ "id" "start" "entry.age" "priority" "project" "due" "description" ];
    # report.active.labels  = [ "ID" "Started" "Age" "Priority" "Project" "Due" "Description" ];
    # taskd = {
    #   certificate = "/path/to/cert";
    #   key = "/path/to/key";
    #   ca = "/path/to/ca";
    #   server = "host.domain:53589";
    #   credentials = "Org/First Last/cf31f287-ee9e-43a8-843e-e8bbd5de4294";
    # };
  };
  # dataLocation = "~/.data/task";
  extraConfig = ''
  '';

}
