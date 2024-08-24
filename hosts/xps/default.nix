{
  imports = [
    ./hardware-configuration.nix
  ];
  #----Host specific config ----
  powerManagement.powertop.enable = true;
  services.thermald.enable = true;
}
