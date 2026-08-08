{
  inputs,
  ...
}:

{
  imports = [
    inputs.hjem.nixosModules.hjem
  ];

  hjem.clobberByDefault = true;

  hjem.extraModules = [
    inputs.hjem-rum.hjemModules.default
  ];
}
