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
  };

  security.rtkit.enable = true;
}
