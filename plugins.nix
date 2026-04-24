pkgs: {
  vim.extraPlugins.catppuccin = {
    package = pkgs.vimPlugins.catppuccin-nvim;
    setup = # lua
      "vim.cmd.colorscheme 'catppuccin-mocha'";
  };

  vim.utility = {
    images.image-nvim = {
      enable = true;
      setupOpts = {
	backend = "kitty";
      };
    };

    oil-nvim = {
      enable = true;
      setupOpts = {
	columns = [ "icons" ];
	constrain_cursor = "name";
        default_file_explorer = true;
        skip_confirm_for_simple_edits = true;
      };
    };
  };

  vim.treesitter = {
    enable = true;
    grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
}
