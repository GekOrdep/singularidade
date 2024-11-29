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
      appimage-run
      aseprite
      blender
      btop
      calc
      discord
      gamemode
      gimp
      git
      godot_4
      heroic
      jdk17
      libreoffice
      lutris
      neovim
      networkmanager_dmenu
      nodejs_22
      pavucontrol
      prismlauncher
      pywal
      rofi
      spotify
      unzip
      vscode
      wine
      winetricks
    ];
    sessionVariables = {
      EDITOR = "nvim";
      BROWSER = "firefox";
      TERMINAL = "kitty";
    };
  }; 
}
