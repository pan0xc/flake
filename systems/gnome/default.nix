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

  environment.gnome.excludePackages = with pkgs; [
    decibels
    epiphany
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-connections
    gnome-console
    gnome-contacts
    gnome-disk-utility
    gnome-font-viewer
    gnome-maps
    gnome-music
    gnome-system-monitor
    gnome-tour
    gnome-weather
    seahorse
    showtime
    simple-scan
    snapshot
    sushi
    yelp
  ];
}
