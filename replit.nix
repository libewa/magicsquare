{ pkgs }: {
	deps = [
		pkgs.nodePackages.prettier
		pkgs.swift
    pkgs.gtk4
    pkgs.clang
	];
}