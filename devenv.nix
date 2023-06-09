{ pkgs, ... }:

{
  services.mysql = {
    enable = true;
    ensureUsers = [
      {
        name = "devenv";
        password = "devenv";
        ensurePermissions = {
          "*.*" = "ALL PRIVILEGES";
        };
      }
    ];
  };
}
