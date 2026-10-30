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
      useTmpfs = true;
      tmpfsSize = "50%";
    };
  };

  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 100;
    memoryMax = 8192 * 1024 * 1024;
  };

  environment.systemPackages = with pkgs; [
    sbctl
  ];
}
