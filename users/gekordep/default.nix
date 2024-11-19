{ pkgs, ... }:

{
  programs.home-manager.enable = true;  
  imports = [
    ./i3.nix
    ./polybar.nix
    ./minecraft.nix
  ];
  home = {
    stateVersion = "24.11";
    username = "gekordep";
    homeDirectory = "/home/gekordep/";
    packages = with pkgs; [
      prismlauncher
      neovim
      unzip
      rofi
      pywal
      calc
      networkmanager_dmenu
    ];
    sessionVariables = {
      EDITOR = "nvim";
      BROWSER = "firefox";
      TERMINAL = "kitty";
    };
  }; 
}
