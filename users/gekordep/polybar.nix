{ pkgs, ... }:
{
  services.polybar = {
    enable = true;
    package = pkgs.polybarFull;
    script = "polybar Barra &";
    config = ./config.ini;
  };
}
