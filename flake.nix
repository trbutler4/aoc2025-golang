{
  description = "Go development environment for Advent of Code 2025";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            go
            gopls
            gotools
            go-tools
            delve
          ];

          shellHook = ''
            export GOPATH="$PWD/.go"
            export PATH="$GOPATH/bin:$PATH"
          '';
        };
      }
    );
}
