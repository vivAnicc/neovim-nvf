{
  vim = {
    lsp = {
      enable = true;
      lspconfig.enable = true;
      mappings = {
	goToDefinition = "gd";
	goToType = "gt";
	renameSymbol = "<leader>lr";
      };
    };

    opts = {
      tabstop = 8;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = false;

      ignorecase = true;
      smartcase = true;
      incsearch = true;

      inccommand = "split";

      number = true;
      relativenumber = true;
      signcolumn = "yes";
      cursorcolumn = false;

      smartindent = true;
      cindent = true;

      swapfile = false;
      undofile = true;

      termguicolors = true;

      winborder = "rounded";

      scrolloff = 5;

      timeout = false;

      cmdwinheight = 1;
    };

    keymaps = [
      {
	mode = "n";
	key = "<leader>e";
	action = "<cmd>Oil<CR>";
      }
      {
	mode = ["n" "v" "x"];
	key = "<leader>\"";
	action = "\"+";
      }
      {
	mode = "n";
	key = "<C-c>";
	action = "<cmd>nohlsearch<CR><cmd>let @/=\"\"<CR>";
      }
    ];

    autocmds = [
      {
	event = ["BufEnter"];
	command = "set tabstop=8";
      }
      {
	event = ["BufEnter"];
	command = "set softtabstop=2";
      }
      {
	event = ["BufEnter"];
	command = "set shiftwidth=2";
      }
      {
	event = ["BufEnter"];
	command = "set noexpandtab";
      }
    ];
  };
}
