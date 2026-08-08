{
  self,
  inputs,
  ...
}:

{
  flake.deploy.nodes = {
    nixos = {
      hostname = "nixos";
      profiles = {
        system = {
          user = "root";
          path = inputs.deploy-rs.lib.x86_64-linux.activate.nixos self.nixosConfigurations.nixos;
        };
      };
    };
  };
}
