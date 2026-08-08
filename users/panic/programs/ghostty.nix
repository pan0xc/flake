{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    nautilus-python
    xdg-terminal-exec
  ];

  hjem.users.panic = {
    rum.programs.ghostty = {
      enable = true;

      settings = {
        theme = "light:Adwaita,dark:Adwaita Dark";

        font-family = "Monospace";
        font-size = 11;
        font-feature = "iga, calt";

        cursor-style = "block";
        shell-integration-features = "no-cursor";

        window-width = 110;
        window-height = 36;
        window-padding-x = 4;
        window-padding-y = 4;

        keybind = [
          "f11=toggle_window_decorations"
        ];
      };
    };
  };
}
