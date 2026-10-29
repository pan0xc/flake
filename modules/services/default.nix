{
  ...
}:

{
  imports = [
    ./dae
  ];

  services = {
    flatpak.enable = true;

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
        zram1 = {
          zram-size = "min(ram, 8192)";
          swap-priority = 1000;
        };
      };
    };
  };

  security.rtkit.enable = true;
}
