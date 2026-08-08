{
  ...
}:

{
  imports = [
    ../users.nix
    ./programs
  ];

  users.users.panic = {
    isNormalUser = true;
    description = "Chen Pan";
    home = "/home/panic";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  hjem.users.panic.enable = true;
}
