{
  description = "Neovim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      pkgsFor = nixpkgs.legacyPackages;
    in
    rec {
      packages = forAllSystems (system: rec {
        main = pkgsFor.${system}.callPackage ./pkgs/neovim { };
        default = main;
      });

      hydraJobs = {
        x86_64-linux.main = packages.x86_64-linux.main;
      };
    };
}
