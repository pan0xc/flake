{
  ...
}:

{
  imports = [
    ../../modules/nix
    ../../modules/gnome
    ../../modules/users
    ../../modules/boot
    ../../modules/i18n
    ../../modules/networking
    ../../modules/services
    ../../modules/hardware

    ./hardware-configuration.nix
  ];

  networking.hostName = "nixos";
  system.stateVersion = "26.05";
}
