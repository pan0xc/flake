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
    plymouth.enable = true;
    kernelParams = [
      "quiet"
      "plymouth.use-simpledrm"
      "i915.fastboot=1"
    ];

    tmp = {
      useZram = true;
      zramSettings = {
        zram-size = "min(ram, 8192)";
        compression-algorithm = "zstd";
        fs-type = "ext4";
      };
    };
  };

  zramSwap = {
    enable = true;
    algorithm = "zstd";
  };

  environment.systemPackages = with pkgs; [
    sbctl
  ];
}
