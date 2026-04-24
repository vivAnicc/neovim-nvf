{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nvf.url = "github:NotAShelf/nvf";
    utils.url = "github:vivAnicc/nix-utils";
  };

  outputs = { nixpkgs, nvf, utils, ... }: utils.lib.mkFlake (system: let
      pkgs = import nixpkgs {inherit system;};
      nvfModules = [
	(import ./config.nix)
	(import ./plugins.nix pkgs)
      ];
      neovimConfig = nvf.lib.neovimConfiguration {
	inherit pkgs;
	modules = nvfModules;
      };
    in {
      inherit nvfModules;
      packages.${system} = {
	default = neovimConfig.neovim;
	neovim = neovimConfig.neovim;
      };
    }
  );
}
