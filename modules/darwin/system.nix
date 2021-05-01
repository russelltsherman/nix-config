{ pkgs, ... }:
{
  # checks.verifyNixPath = true;
  # darwinLabel = "";
  defaults = {
      dock = {
          autohide = true;
          mru-spaces = false;
          minimize-to-application = true;
      };
      finder = {
          AppleShowAllExtensions = true;
          _FXShowPosixPathInTitle = true;
          FXEnableExtensionChangeWarning = false;
      };
      screencapture.location = "/tmp";
      trackpad = {
          Clicking = true;
          TrackpadThreeFingerDrag = true;
      };
      NSGlobalDomain._HIHideMenuBar = true;
  };
  keyboard = {
    enableKeyMapping = true;
    remapCapsLockToControl = true;
  };
  stateVersion = 4;
}

# system.defaults..GlobalPreferences.com.apple.sound.beep.sound
# Sets the system-wide alert sound. Found under "Sound Effects" in the "Sound" section of "System Preferences". Look in "/System/Library/Sounds" for possible candidates.
# Type: null or path # Default: null

# system.defaults.LaunchServices.LSQuarantine
# Whether to enable quarantine for downloaded applications. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.AppleFontSmoothing
# Sets the level of font smoothing (sub-pixel font rendering).
# Type: null or one of 0, 1, 2 # Default: null

# system.defaults.NSGlobalDomain.AppleKeyboardUIMode
# Configures the keyboard control behavior. Mode 3 enables full keyboard control.
# Type: null or one of 3 # Default: null

# system.defaults.NSGlobalDomain.AppleMeasurementUnits
# Whether to use centimeters (metric) or inches (US, UK) as the measurement unit. The default is based on region settings.
# Type: null or one of "Centimeters", "Inches" # Default: null

# system.defaults.NSGlobalDomain.AppleMetricUnits
# Whether to use the metric system. The default is based on region settings.
# Type: null or one of 0, 1 # Default: null

# system.defaults.NSGlobalDomain.ApplePressAndHoldEnabled
# Whether to enable the press-and-hold feature. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.AppleShowAllExtensions
# Whether to show all file extensions in finder. The default is false.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.AppleShowScrollBars
# When to show the scrollbars. Options are 'WhenScrolling', 'Automatic' and 'Always'.
# Type: null or one of "WhenScrolling", "Automatic", "Always" # Default: null

# system.defaults.NSGlobalDomain.AppleTemperatureUnit
# Whether to use Celsius or Fahrenheit. The default is based on region settings.
# Type: null or one of "Celsius", "Fahrenheit" # Default: null

# system.defaults.NSGlobalDomain.InitialKeyRepeat
# # Apple menu > System Preferences > Keyboard If you press and hold certain keyboard keys when in a text area, the key’s character begins to repeat. For example, the Delete key continues to remove text for as long as you hold it down.
# This sets how long you must hold down the key before it starts repeating.
# Type: null or signed integer # Default: null

# system.defaults.NSGlobalDomain.KeyRepeat
# # Apple menu > System Preferences > Keyboard If you press and hold certain keyboard keys when in a text area, the key’s character begins to repeat. For example, the Delete key continues to remove text for as long as you hold it down.
# This sets how fast it repeats once it starts.
# Type: null or signed integer # Default: null

# system.defaults.NSGlobalDomain.NSAutomaticCapitalizationEnabled
# Whether to enable automatic capitalization. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSAutomaticDashSubstitutionEnabled
# Whether to enable smart dash substitution. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSAutomaticPeriodSubstitutionEnabled
# Whether to enable smart period substitution. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSAutomaticQuoteSubstitutionEnabled
# Whether to enable smart quote substitution. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSAutomaticSpellingCorrectionEnabled
# Whether to enable automatic spelling correction. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSDisableAutomaticTermination
# Whether to disable the automatic termination of inactive apps.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSDocumentSaveNewDocumentsToCloud
# Whether to save new documents to iCloud by default. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode
# Whether to use expanded save panel by default. The default is false.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode2
# Whether to use expanded save panel by default. The default is false.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSScrollAnimationEnabled
# Whether to enable smooth scrolling. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSTableViewDefaultSizeMode
# Sets the size of the finder sidebar icons: 1 (small), 2 (medium) or 3 (large). The default is 3.
# Type: null or one of 1, 2, 3 # Default: null

# system.defaults.NSGlobalDomain.NSTextShowsControlCharacters
# Whether to display ASCII control characters using caret notation in standard text views. The default is false.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSUseAnimatedFocusRing
# Whether to enable the focus ring animation. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.NSWindowResizeTime
# Sets the speed speed of window resizing. The default is given in the example.
# Type: null or float # Default: null
# Example: "0.20"

# system.defaults.NSGlobalDomain.PMPrintingExpandedStateForPrint
# Whether to use the expanded print panel by default. The default is false.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.PMPrintingExpandedStateForPrint2
# Whether to use the expanded print panel by default. The default is false.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain._HIHideMenuBar
# Whether to autohide the menu bar. The default is false.
# Type: null or boolean # Default: null
 
# system.defaults.NSGlobalDomain.com.apple.keyboard.fnState
# Use F1, F2, etc. keys as standard function keys.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.com.apple.mouse.tapBehavior
# Configures the trackpad tap behavior. Mode 1 enables tap to click.
# Type: null or one of 1 # Default: null

# system.defaults.NSGlobalDomain.com.apple.sound.beep.feedback
# # Apple menu > System Preferences > Sound Make a feedback sound when the system volume changed. This setting accepts the integers 0 or 1. Defaults to 1.
# Type: null or signed integer # Default: null

# system.defaults.NSGlobalDomain.com.apple.sound.beep.volume
# # Apple menu > System Preferences > Sound Sets the beep/alert volume level from 0.000 (muted) to 1.000 (100% volume).
# 75% = 0.7788008 50% = 0.6065307 25% = 0.4723665
# Type: null or float # Default: null

# system.defaults.NSGlobalDomain.com.apple.springing.delay
# Set the spring loading delay for directories. The default is given in the example.
# Type: null or float # Default: null

# system.defaults.NSGlobalDomain.com.apple.springing.enabled
# Whether to enable spring loading (expose) for directories.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.com.apple.swipescrolldirection
# Whether to enable "Natural" scrolling direction. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.com.apple.trackpad.enableSecondaryClick
# Whether to enable trackpad secondary click. The default is true.
# Type: null or boolean # Default: null

# system.defaults.NSGlobalDomain.com.apple.trackpad.scaling
# Configures the trackpad tracking speed (0 to 3). The default is "1".
# Type: null or float # Default: null

# system.defaults.NSGlobalDomain.com.apple.trackpad.trackpadCornerClickBehavior
# Configures the trackpad corner click behavior. Mode 1 enables right click.
# Type: null or one of 1 # Default: null

# system.defaults.SoftwareUpdate.AutomaticallyInstallMacOSUpdates
# Automatically install Mac OS software updates. Defaults to false.
# Type: null or boolean # Default: null

# system.defaults.alf.allowdownloadsignedenabled
# # Apple menu > System Preferences > Security and Privacy > Firewall Allows any downloaded Application that has been signed to accept incoming requests. Default is 0.
# 0 = disabled 1 = enabled
# Type: null or signed integer # Default: null

# system.defaults.alf.allowsignedenabled
# # Apple menu > System Preferences > Security and Privacy > Firewall Allows any signed Application to accept incoming requests. Default is true.
# 0 = disabled 1 = enabled
# Type: null or signed integer # Default: null

# system.defaults.alf.globalstate
# # Apple menu > System Preferences > Security and Privacy > Firewall Enable the internal firewall to prevent unauthorised applications, programs and services from accepting incoming connections.
# 0 = disabled 1 = enabled 2 = blocks all connections except for essential services
# Type: null or signed integer # Default: null

# system.defaults.alf.loggingenabled
# # Apple menu > System Preferences > Security and Privacy > Firewall Enable logging of requests made to the firewall. Default is 0.
# 0 = disabled 1 = enabled
# Type: null or signed integer # Default: null

# system.defaults.alf.stealthenabled
# # Apple menu > System Preferences > Security and firewall Drops incoming requests via ICMP such as ping requests. Default is 0.
# 0 = disabled 1 = enabled
# Type: null or signed integer # Default: null

# system.defaults.dock.enable-spring-load-actions-on-all-items
# Enable spring loading for all Dock items. The default is false;
# Type: null or boolean # Default: null

# system.defaults.dock.autohide
# Whether to automatically hide and show the dock. The default is false.
# Type: null or boolean # Default: null

# Declared by:m/defaults/dock.nix>
# system.defaults.dock.autohide-delay
# Sets the speed of the autohide delay. The default is given in the example.
# Type: null or float # Default: null

# system.defaults.dock.autohide-time-modifier
# Sets the speed of the animation when hiding/showing the Dock. The default is given in the example.
# Type: null or float # Default: null

# system.defaults.dock.dashboard-in-overlay
# Whether to hide Dashboard as a Space. The default is false;
# Type: null or boolean # Default: null

# system.defaults.dock.expose-animation-duration
# Sets the speed of the Mission Control animations. The default is given in the example.
# Type: null or float # Default: null

# system.defaults.dock.expose-group-by-app
# Whether to group windows by application in Mission Control's Exposé. The default is true.
# Type: null or boolean # Default: null

# system.defaults.dock.launchanim
# Animate opening applications from the Dock. The default is true.
# Type: null or boolean # Default: null

# system.defaults.dock.mineffect
# Set the minimize/maximize window effect. The default is genie.
# Type: null or one of "genie", "suck", "scale" # Default: null

# system.defaults.dock.minimize-to-application
# Whether to minimize windows into their application icon. The default is false.
# Type: null or boolean # Default: null

# system.defaults.dock.mouse-over-hilite-stack
# Enable highlight hover effect for the grid view of a stack in the Dock.
# Type: null or boolean # Default: null

# system.defaults.dock.mru-spaces
# Whether to automatically rearrange spaces based on most recent use. The default is true.
# Type: null or boolean # Default: null

# system.defaults.dock.orientation
# Position of the dock on screen. The default is "bottom".
# Type: null or one of "bottom", "left", "right # Default: null

# system.defaults.dock.show-process-indicators
# Show indicator lights for open applications in the Dock. The default is true.
# Type: null or boolean # Default: null

# system.defaults.dock.show-recents
# Show recent applications in the dock. The default is true.
# Type: null or boolean # Default: null

# system.defaults.dock.showhidden
# Whether to make icons of hidden applications tranclucent. The default is false.
# Type: null or boolean # Default: null

# system.defaults.dock.static-only
# Show only open applications in the Dock. The default is false.
# Type: null or boolean # Default: null

# system.defaults.dock.tilesize
# Size of the icons in the dock. The default is 64.
# Type: null or signed integer # Default: null

# system.defaults.finder.AppleShowAllExtensions
# Whether to always show file extensions. The default is false.
# Type: null or boolean # Default: null

# system.defaults.finder.FXEnableExtensionChangeWarning
# Whether to show warnings when change the file extension of files. The default is true.
# Type: null or boolean # Default: null

# system.defaults.finder.QuitMenuItem
# Whether to allow quitting of the Finder. The default is false.
# Type: null or boolean # Default: null

# system.defaults.finder._FXShowPosixPathInTitle
# Whether to show the full POSIX filepath in the window title. The default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.DisableConsoleAccess
# Disables the ability for a user to access the console by typing “>console” for a username at the login window. Default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.GuestEnabled
# # Apple menu > System Preferences > Users and Groups > Login Options Allow users to login to the machine as guests using the Guest account. Default is true.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.LoginwindowText
# Text to be shown on the login window. Default "\\U03bb".
# Type: null or string # Default: null

# system.defaults.loginwindow.PowerOffDisabledWhileLoggedIn
# # Apple menu > System Preferences > Users and Groups > Login Options If set to true, the Power Off menu item will be disabled when the user is logged in. Default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.RestartDisabled
# # Apple menu > System Preferences > Users and Groups > Login Options Hides the Restart button on the login screen. Default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.RestartDisabledWhileLoggedIn
# # Apple menu > System Preferences > Users and Groups > Login Options Disables the “Restart” option when users are logged in. Default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.SHOWFULLNAME
# # Apple menu > System Preferences > Users and Groups > Login Options Displays login window as a name and password field instead of a list of users. Default is false.
# Type: null or boolean# Default: null
 
# system.defaults.loginwindow.ShutDownDisabled
# # Apple menu > System Preferences > Users and Groups > Login Options Hides the Shut Down button on the login screen. Default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.ShutDownDisabledWhileLoggedIn
# # Apple menu > System Preferences > Users and Groups > Login Options Disables the "Shutdown" option when users are logged in. Default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.SleepDisabled
# # Apple menu > System Preferences > Users and Groups > Login Options Hides the Sleep button on the login screen. Default is false.
# Type: null or boolean # Default: null

# system.defaults.loginwindow.autoLoginUser
# # Apple menu > System Preferences > Users and Groups > Login Options Auto login the supplied user on boot. Default is Off.
# Type: null or string # Default: null

# system.defaults.screencapture.location
# The filesystem path to which screencaptures should be written.
# Type: null or string # Default: null

# system.defaults.smb.NetBIOSName
# Hostname to use for NetBIOS.
# Type: null or string # Default: null

# system.defaults.smb.ServerDescription
# Hostname to use for sharing services.
# Type: null or string # Default: null

# system.defaults.spaces.spans-displays
# # Apple menu > System Preferences > Mission Control Displays have separate Spaces (note a logout is required before this setting will take affect).
# false = each physical display has a separate space (Mac default) true = one space spans across all physical displays
# Type: null or boolean # Default: null

# system.defaults.trackpad.ActuationStrength
# 0 to enable Silent Clicking, 1 to disable. The default is 1.
# Type: null or one of 0, 1 # Default: null

# system.defaults.trackpad.Clicking
# Whether to enable trackpad tap to click. The default is false.
# Type: null or boolean # Default: null

# system.defaults.trackpad.FirstClickThreshold
# For normal click: 0 for light clicking, 1 for medium, 2 for firm. The default is 1.
# Type: null or one of 0, 1, 2 # Default: null

# system.defaults.trackpad.SecondClickThreshold
# For force touch: 0 for light clicking, 1 for medium, 2 for firm. The default is 1.
# Type: null or one of 0, 1, 2 # Default: null

# system.defaults.trackpad.TrackpadRightClick
# Whether to enable trackpad right click. The default is false.
# Type: null or boolean # Default: null

# system.defaults.trackpad.TrackpadThreeFingerDrag
# Whether to enable three finger drag. The default is false.
# Type: null or boolean # Default: null
