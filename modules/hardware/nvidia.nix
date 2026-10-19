{
  config,
  ...
}:

{
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.graphics = {
    enable = true;
  };
  hardware.nvidia = {
    open = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
    dynamicBoost.enable = true;
    nvidiaSettings = false;
    powerManagement.enable = true;
  };
}
