{
  pkgs,
  ...
}:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      efi.canTouchEfiVariables = true;

      limine = {
        enable = true;
        maxGenerations = 10;
        enrollConfig = true;
        secureBoot.enable = true;
      };
    };

    consoleLogLevel = 0;
    initrd = {
      verbose = false;
      systemd.enable = true;
    };
    plymouth.enable = true;
    kernelParams = [
      "quiet"
      "plymouth.use-simpledrm"
      "i915.fastboot=1"
    ];
  };

  environment.systemPackages = with pkgs; [
    sbctl
  ];
}
