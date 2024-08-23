{ username, ... }:
{
  users.users.${username} = {
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBIseMvFN7ZlB/FKAj2QnvcsRLbIu8xgBNPYF778xfw1 erskine.tom@gmail.com"
    ];
  };

  services.openssh = {
    enable = true;
    ports = [ 4545 ];
    settings.PasswordAuthentication = false;
    settings.KbdInteractiveAuthentication = false;
    settings.X11Forwarding = true;
  };
}
