{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = with inputs; [
    ./hardware-configuration.nix
    ../desktop.nix

    nixos-hardware.nixosModules.common-cpu-intel
  ];

  networking.hostName = "nixos";

  environment.systemPackages = with pkgs; [

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
}
