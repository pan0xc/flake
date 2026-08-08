{
  pkgs,
  lib,
  ...
}:

{
  hjem.users.panic.rum.programs.direnv = {
    enable = true;

    integrations.fish.enable = true;
  };
}
