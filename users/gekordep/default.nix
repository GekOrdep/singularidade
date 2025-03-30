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
      gh
      gimp
      git
      godot_4
      haguichi
      heroic
      jdk21
      libreoffice
      logmein-hamachi
      lutris
      neovim
      networkmanager_dmenu
      ngrok
      nodejs_22
      pavucontrol
      prismlauncher
      pywal
      rofi
      sqlite
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
