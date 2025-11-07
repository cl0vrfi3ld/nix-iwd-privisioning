{
  description = "A very basic flake";

  inputs = {
    # nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    # provisioning-module.url = ./.;
  };

  outputs =
    { self }:
    {
      nixosModules = {
        nix-iwd-provisioning = ./modules/provisioning.nix;
        nix-iwd-eduroam = ./modules/eduroam.nix;
      };
      # homeManagerModule = { config }: { imports = [ ./provisioning.nix ]; };
    };
}
