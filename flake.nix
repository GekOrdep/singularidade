{
  description = "O conglomerado dos meus sistemas";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in
  {
    nixosConfigurations = {
      rock = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./systems/rock
        ];
        specialArgs = {
          inherit inputs;
        };
      };
    };

    homeConfigurations = {
      gekordep = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./users/gekordep
        ];
        extraSpecialArgs = {
          inherit inputs;
        };
      };
    };
  };
}
