{ pkgs, ... }:

{

  enable = true;
  settings = {
    account_guest_in_cpu_meter = false;
    color_scheme = 0;
    cpu_count_from_zero = false;
    delay = 15;
    detailed_cpu_time = false;
    enable_mouse = true;
    fields = [ "PID" "USER" "PRIORITY" "NICE" "M_SIZE" "M_RESIDENT" "M_SHARE" "STATE" "PERCENT_CPU" "PERCENT_MEM" "TIME" "COMM" ];
    header_margin = true;
    hide_kernel_threads = true;
    hide_threads = false;
    hide_userland_threads = false;
    highlight_base_name = false;
    highlight_megabytes = true;
    highlight_threads = true;
    left_meters = [ "AllCPUs" "Memory" "Swap" ];
    right_meters = [ "Tasks" "LoadAverage" "Uptime" ];
    shadow_other_users = false;
    show_cpu_frequency = false;
    show_cpu_usage = false;
    show_program_path = true;
    show_thread_names  = false;
    sort_direction = true;
    sort_key = "PERCENT_CPU";
    tree_view = false;
    update_process_names = false;
    vim_mode = false;
  };
}
