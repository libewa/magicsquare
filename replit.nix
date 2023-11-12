{ pkgs }: {
	deps = with pkgs; [
		pkgs.nodePackages.prettier
		swift
        swiftPackages.swiftpm
        swiftPackages.Foundation
        swiftPackages.stdenv
        sourcekit-lsp
    	clang
	];
}