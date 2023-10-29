{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs; [
        swift
        swiftPackages.swiftpm
        swiftPackages.Foundation
        swiftPackages.stdenv
        sourcekit-lsp
    ];
}
