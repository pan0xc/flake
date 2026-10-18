{
  pkgs,
  lib,
  ...
}:

{
  hjem.users.panic.rum.programs.vscode = {
    enable = true;

    settings = {
      "editor.fontFamily" = "monospace, Maple Mono CN, Symbols Nerd Font Mono";
      "editor.fontSize" = 16;
      "editor.fontLigatures" = true;
      "terminal.integrated.fontSize" = 16;
      "terminal.integrated.cursorBlinking" = true;
      "workbench.iconTheme" = "vscode-icons";
      "window.autoDetectColorScheme" = true;

      "C_Cpp.intelliSenseEngine" = "disabled";
    };
  };
}
