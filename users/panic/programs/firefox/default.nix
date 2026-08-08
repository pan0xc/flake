{
  lib,
  pkgs,
  ...
}:

{
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;

    preferences = {
      "browser.translations.enable" = false;
      "middlemouse.paste" = false;
      "media.eme.enabled" = true;
      "image.jxl.enabled" = true;
    };
  };

  hjem.users.panic = {
    packages = with pkgs; [
      firefox-gnome-theme
    ];
  };
}
