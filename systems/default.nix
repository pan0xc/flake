{
  config,
  inputs,
  lib,
  ...
}:

{
  flake.nixosConfigurations.nixos = lib.nixosSystem {
    modules = [
      ./nix
      ./gnome
      ./users
      ./boot
      ./i18n
      ./networking
      ./services
    ];
    specialArgs = { inherit inputs; };
  };
}
