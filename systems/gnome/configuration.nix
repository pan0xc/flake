{
  config,
  inputs,
  ...
}:

{
  imports = with inputs; [
    nixos-hardware.nixosModules.common-cpu-intel
  ];

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

  system.stateVersion = "26.05";
}
