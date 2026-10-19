{
  ...
}:

{
  imports = [
    ./dae
  ];

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

  security.rtkit.enable = true;
}
