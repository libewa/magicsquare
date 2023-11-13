{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = with pkgs; [
        swift
        swiftPackages.swiftpm
        swiftPackages.Dispatch
        swiftPackages.Foundation
        swiftPackages.XCTest
        swiftpm2nix
        sourcekit-lsp
    ];

    shellHook = ''
      CC=clang
    '';
}
