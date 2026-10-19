{
  inputs,
  lib,
  ...
}:

{
  flake.nixosConfigurations.nixos = lib.nixosSystem {
    modules = [
      ./configuration.nix
    ];
    specialArgs = { inherit inputs; };
  };
}
