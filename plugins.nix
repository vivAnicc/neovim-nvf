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
      key = "<leader>sf<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua files<CR>";
    }
    {
      key = "<leader>sb<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua buffers<CR>";
    }
    {
      key = "<leader>sh<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua helptags<CR>";
    }
    {
      key = "<leader>sr<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua resume<CR>";
    }
    {
      key = "<leader>sk<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua keymaps<CR>";
    }
    {
      key = "<leader>sg<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua grep<CR>";
    }
    {
      key = "<leader>sa<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua lsp_code_actions<CR>";
    }
    {
      key = "<leader>ss<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua lsp_document_symbols<CR>";
    }
    {
      key = "<leader>sw<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua diagnostics_workspace<CR>";
    }
    {
      key = "<leader>sd<CR>";
      mode = "n";
      silent = true;
      action = ":FzfLua diagnostics_document<CR>";
    }
  ];

  vim.treesitter = {
    enable = true;
    indent.enable = false;
    grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
}
