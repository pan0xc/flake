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
    sops-nix.nixosModules.sops
  ];

  networking.hostName = "nixos";

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs; [

  ];

  sops = {
    age.sshKeyPaths = [ "/home/panic/.config/sops/age/keys.txt" ];
    defaultSopsFile = ./secrets/secrets.yaml;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.graphics.enable = true;
  hardware.nvidia.open = true;
}
