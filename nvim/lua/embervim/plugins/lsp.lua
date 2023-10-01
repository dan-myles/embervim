return {
	-- LSP Zero
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = false,
		init = function()
			-- Disable automatic setup, we are doing it manually
			vim.g.lsp_zero_extend_cmp = 0
			vim.g.lsp_zero_extend_lspconfig = 0
		end,
	},

	-- Mason
	{
		'williamboman/mason.nvim',
		lazy = false,
		config = function() 
			require("mason").setup()
		end,
	},

	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			{'L3MON4D3/LuaSnip'},
		},
		config = function()
			-- Here is where you configure the autocompletion settings.
			local lsp_zero = require('lsp-zero')
			lsp_zero.extend_cmp()
			-- And you can configure cmp even more, if you want to.
			local cmp = require('cmp')
			local cmp_action = lsp_zero.cmp_action()
			cmp.setup({
				formatting = lsp_zero.cmp_format(),
				mapping = cmp.mapping.preset.insert({
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-u>'] = cmp.mapping.scroll_docs(-4),
					['<C-d>'] = cmp.mapping.scroll_docs(4),
					['<C-f>'] = cmp_action.luasnip_jump_forward(),
					['<C-b>'] = cmp_action.luasnip_jump_backward(),
				})
			})
		end
	},

	-- LSP
	{
		'neovim/nvim-lspconfig',
		cmd = {'LspInfo', 'LspInstall', 'LspStart'},
		event = {'BufReadPre', 'BufNewFile'},
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
			{'williamboman/mason-lspconfig.nvim'},
		},
		config = function()
			-- This is where all the LSP shenanigans will live
			local lsp_zero = require('lsp-zero')

			lsp_zero.set_sign_icons({
				warn = '',
				error = '',
				hint = '',
				info = ''
			})

			lsp_zero.extend_lspconfig()
			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({buffer = bufnr})
			end)
			

			require('mason-lspconfig').setup({
				ensure_installed = {},
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						-- (Optional) Configure lua language server for neovim
						local lua_opts = lsp_zero.nvim_lua_ls()
						require('lspconfig').lua_ls.setup(lua_opts)
					end,
				}
			})

			vim.diagnostic.config({
				virtual_text = false,
				underline = false,
			})
		end
	},

	-- LSPSaga
	{
		"nvimdev/lspsaga.nvim",
		lazy = true,
		event = { "LspAttach" },
		keys = {
			{ "gd", "<cmd>Lspsaga goto_definition<CR>zz", desc = "Go to Definition" },
			{ "<leader>o", "<cmd>Lspsaga outline<CR>", desc = "Toggle Code Outline" },
			{ "<leader>lq", "<cmd>Lspsaga finder<CR>", desc = "Definition & References" },
			{ "<leader>lr", "<cmd>Lspsaga rename ++project<CR>", desc = "Rename" },
			{ "<leader>ld", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek Definition" },
			{ "<leader>lt", "<cmd>Lspsaga peek_type_definition<CR>", desc = "Peek Type Definition" },
			{ "<leader>lb", "<cmd>Lspsaga show_buf_diagnostics<CR>", desc = "Buffer Diagnostics" },
			{ "<leader>lw", "<cmd>Lspsaga show_workspace_diagnostics<CR>", desc = "Workspace Diagnostics" },
			{ "<leader>la", "<cmd>Lspsaga code_action<CR>", desc = "Code Action" }
		},
		config = function()
			require("lspsaga").setup({
				ui = {
					code_action = "",
				},
				symbol_in_winbar = {
					enable = false,
				},
				code_action = {
					keys = {
						quit = { "q", "<ESC>" },
					},
				},
				diagnostic = {
					show_code_action = false,
				}
			})
		end
	},

	-- Autopairing
	{ 
		"windwp/nvim-autopairs",
		lazy = true,
		event = { "InsertEnter" },
		config = function() 
			require("nvim-autopairs").setup()
		end
	},

	-- Formatting
	{
		"stevearc/conform.nvim",
		lazy = true,
		event = {'BufReadPre', 'BufNewFile'},
		config = function()
			require("conform").setup({
				format_after_save = {
					lsp_fallback = false
				},
				formatters_by_ft = {
					typescript = { "prettierd" },
					typescriptreact = { "prettierd" },
					javascript = { "prettierd" },
					javascriptreact = { "prettierd" }
				}
			})
		end,
	},

	-- Linting
	{
		"mfussenegger/nvim-lint",
		lazy = true,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("lint").linters_by_ft = {
				typescript = { "eslint_d" },
				typescriptreact = { "eslint_d" },
				javascript = { "eslint_d" },
				javascriptreact = { "eslint_d" }
			}
		end
	}
}
