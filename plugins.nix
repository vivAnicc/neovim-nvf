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

  vim.fzf-lua = {
    enable = true;
    profile = "default";
	# settings.files = {
      #   git_icons = false;
      #   file_icons = false;
      #   color_icons = true;
      # };
  };
  
  vim.keymaps = [
    {
      key = "<leader>sf";
      mode = "n";
      silent = true;
      action = ":FzfLua files";
    }
    {
      key = "<leader>sb";
      mode = "n";
      silent = true;
      action = ":FzfLua buffers";
    }
    {
      key = "<leader>sh";
      mode = "n";
      silent = true;
      action = ":FzfLua helptags";
    }
    {
      key = "<leader>sr";
      mode = "n";
      silent = true;
      action = ":FzfLua resume";
    }
    {
      key = "<leader>sk";
      mode = "n";
      silent = true;
      action = ":FzfLua keymaps";
    }
    {
      key = "<leader>sg";
      mode = "n";
      silent = true;
      action = ":FzfLua grep";
    }
    {
      key = "<leader>sa";
      mode = "n";
      silent = true;
      action = ":FzfLua lsp_code_actions";
    }
    {
      key = "<leader>ss";
      mode = "n";
      silent = true;
      action = ":FzfLua lsp_document_symbols";
    }
    {
      key = "<leader>sw";
      mode = "n";
      silent = true;
      action = ":FzfLua diagnostics_workspace";
    }
    {
      key = "<leader>sd";
      mode = "n";
      silent = true;
      action = ":FzfLua diagnostics_document";
    }
  ];

  vim.treesitter = {
    enable = true;
    indent.enable = false;
    grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
}
