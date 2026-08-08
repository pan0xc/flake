{
  pkgs,
  ...
}:

{
  imports = [
    ./shell
    ./direnv.nix
    ./fontconfig
    ./firefox
    ./ghostty.nix
    ./ibus.nix
    ./vscode.nix
    ./git.nix
  ];

  programs = {
  };

  hjem.users.panic = {
    packages = with pkgs; [
      # app
      apostrophe
      amberol
      celluloid
      flclash
      gnome-extension-manager
      qq
      refine
      resources

      # cmd
      fastfetch
    ];
  };
}
