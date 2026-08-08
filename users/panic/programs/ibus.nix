{
  pkgs,
  ...
}:

{
  i18n.inputMethod = {
      enable = true;
      type = "ibus";
      ibus.engines = with pkgs.ibus-engines; [
        (rime.override {
          rimeDataPkgs = [
            pkgs.rime-ice
          ];
        })
      ];
  };

  hjem.users.panic = {
    xdg.config.files = {
      "ibus/rime/default.custom.yaml".text = ''
        patch:
          __include: rime_ice_suggestion:/
      '';
    };

    xdg.config.files = {
      "ibus/rime/ibus_rime.custom.yaml".text = ''
        patch:
          style:
            cursor_type: insert
            preedit_style: composition
            horizontal: true
      '';
    };
  };
}
