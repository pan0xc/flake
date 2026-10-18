{
  pkgs,
  ...
}:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      lxgw-wenkai

      fira-code
      maple-mono.CN

      twitter-color-emoji
      nerd-fonts.symbols-only
    ];
  };

  hjem.users.panic = {
    xdg.config.files = {
      "fontconfig/fonts.conf".source = ./fonts.conf;
      "fontconfig/mac-fonts.conf".source = ./mac-fonts.conf;
      "fontconfig/web-fonts.conf".source = ./web-fonts.conf;
      "fontconfig/web-ui-fonts.conf".source = ./web-ui-fonts.conf;
      "fontconfig/win-fonts.conf".source = ./win-fonts.conf;
    };
  };
}
