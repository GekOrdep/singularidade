{
  programs.home-manager.enable = true;  
  imports = [
    ./i3.nix
    ./polybar.nix
  ];
  home = {
    stateVersion = "24.11";
    username = "gekordep";
    homeDirectory = "/home/gekordep/";
  }; 
}
