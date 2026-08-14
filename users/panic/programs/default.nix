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
    ./helix.nix
  ];

  programs = {
  };

  hjem.users.panic = {
    packages = with pkgs; [
      # app
      apostrophe
      amberol
      celluloid
      gnome-extension-manager
      qq
      refine
      resources

      # cmd
      fastfetch
    ];
  };
}
