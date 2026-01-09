return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	vim.diagnostic.config({
		underline = true,
		severity_sort = true,
		float = {
			border = "rounded",
			source = true,
		},
		signs = {
			text = {
				[vim.diagnostic.severity.ERROR] = " ",
				[vim.diagnostic.severity.WARN] = " ",
				[vim.diagnostic.severity.INFO] = " ",
				[vim.diagnostic.severity.HINT] = " ",
			},
			numhl = {
				[vim.diagnostic.severity.ERROR] = "ErrorMsg",
				[vim.diagnostic.severity.WARN] = "WarningMsg",
			},
		},
	}),
	vim.lsp.config("lua_ls", {
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
				format = { enable = false },
				diagnostics = {
					globals = {
						"vim",
						"require",
					},
				},
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
				},
			},
		},
	}),

	vim.lsp.config("basedpyright", {
		settings = {
			basedpyright = {
				-- Using Ruff's import organizer
				disableOrganizeImports = true,
				analysis = {
					ignore = { "*" },
				},
			},
		},
	}),

	vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" }),
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" }),
}
