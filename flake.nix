{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    provisioning-module.url = ./.;
  };

  outputs =
    {
      self,
      nixpkgs,
      provisioning-module,
    }:
    {

      nixosModules.nix-iwd-provisioning = { config }: provisioning-module;
      # {
      #   imports = [ ./. ];
      # };
      # homeManagerModule = { config }: { imports = [ ./provisioning.nix ]; };
    };
}
