{
  inputs,
  lib,
  ...
}:

{
  flake.nixosConfigurations.nixos = lib.nixosSystem {
    modules = [
      ./configuration.nix
      ./gnome.nix
    ];
    specialArgs = { inherit inputs; };
  };
}
