{
  pkgs,
  ...
}:

{
  imports = [
    ./systems.nix
    ../users
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      efi.canTouchEfiVariables = true;

      limine = {
        enable = true;
        maxGenerations = 10;
        enrollConfig = true;
        secureBoot.enable = true;
      };
    };

    consoleLogLevel = 0;
    initrd = {
      verbose = false;
      systemd.enable = true;
    };
    plymouth.enable = true;
    kernelParams = [
      "quiet"
      "plymouth.use-simpledrm"
      "i915.fastboot=1"
    ];
  };

  environment.systemPackages = with pkgs; [
    sbctl
  ];

  networking.networkmanager.enable = true;
  systemd.services.automatic-timezoned.enable = true;
  time.timeZone = "Asia/Shanghai";

  security.rtkit.enable = true;

  services = {
    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
    };

    pulseaudio.enable = false;

    fwupd.enable = true;

    printing = {
      enable = true;
      browsing = true;
    };

    zram-generator = {
      enable = true;
      settings = {
        zram0 = {
          zram-size = "min(ram, 8192)";
          compression-algorithm = "zstd";
          swap-priority = 1000;
        };
      };
    };
  };
}
