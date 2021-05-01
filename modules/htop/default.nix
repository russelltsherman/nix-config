{ pkgs, ... }:

{

  enable = true;
  enableMouse = true;
  accountGuestInCpuMeter = false;
  colorScheme = 0;
  cpuCountFromZero = false;
  delay = 15;
  detailedCpuTime = false;
  fields = [ "PID" "USER" "PRIORITY" "NICE" "M_SIZE" "M_RESIDENT" "M_SHARE" "STATE" "PERCENT_CPU" "PERCENT_MEM" "TIME" "COMM" ];
  headerMargin = true;
  hideKernelThreads = true;
  hideThreads = false;
  hideUserlandThreads = false;
  highlightBaseName = false;
  highlightMegabytes = true;
  highlightThreads = true;
  meters = {
    left = [ "AllCPUs" "Memory" "Swap" ];
    right = [ "Tasks" "LoadAverage" "Uptime" ];
  };
  shadowOtherUsers = false;
  showCpuFrequency = false;
  showCpuUsage = false;
  showProgramPath = true;
  showThreadNames = false;
  sortDescending = true;
  sortKey = "PERCENT_CPU";
  treeView = false;
  updateProcessNames = false;
  vimMode = false;

}

