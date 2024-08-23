{ pkgs, username, ... }:
{
  imports = [
    ./alacritty
    ./cava
    ./fonts
    ./foot
    ./nvim
    ./starship
    ./tmux
    ./yazi
    ./zsh
  ];

  # ---- Home Configuration ----
  home-manager.users.${username} = {
    programs.git = {
      enable = true;
      userName = "terskine";
      userEmail = "erskine.tom@gmail.com";
      };
  };

  # ---- System Configuration ----
  programs = {
    htop.enable = true;
    mtr.enable = true;
  };

  environment.systemPackages = with pkgs; [
    alacritty
    brightnessctl
    btop
    gh
    mods
    nitch
    pavucontrol
    playerctl
    ranger
    ripgrep
    todoist
    unzip
    vhs
    zoxide
  ];
}
