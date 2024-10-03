return {
	-- Mason (Package Manager)
	{
		"williamboman/mason.nvim",
		lazy = false,
		dependencies = {
			{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
		},
		config = function()
			require("mason").setup({})
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- LSPs
					"ts_ls",
					"rust-analyzer",
					"gopls",
					"lua-language-server",
					"yaml-language-server",
					"tailwindcss-language-server",

					-- Formatters
					"prettierd",
					"goimports",
					"golines",
					"stylua",
					"fixjson",

					-- Linters
					"golangci-lint",
					"eslint_d",
				},
				auto_update = true,
				run_on_start = true,
				start_delay = 3000, -- 3 second delay when starting up
				debounce_hours = 5, -- at least 5 hours between attempts to install/update
			})
		end,
	},

	-- LSP Zero
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		lazy = true,
		config = false,
		init = function()
			vim.g.lsp_zero_extend_cmp = 0
			vim.g.lsp_zero_extend_lspconfig = 0
		end,
	},

	-- Autocompletion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			{ "L3MON4D3/LuaSnip" },
			{ "hrsh7th/cmp-nvim-lsp-signature-help" },
			{ "brenoprata10/nvim-highlight-colors" },
		},
		config = function()
			require("nvim-highlight-colors").setup({})
			vim.opt.termguicolors = true
			-- Here is where you configure the autocompletion settings.
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_cmp()
			-- And you can configure cmp even more, if you want to.
			local cmp = require("cmp")
			cmp.setup({
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "nvim_lsp_signature_help" },
				},

				formatting = {
					format = function(entry, item)
						-- Apply nvim-highlight-colors first to get color-specific modifications
						local color_item = require("nvim-highlight-colors").format(entry, { kind = item.kind })

						-- Apply lsp_zero.cmp_format to format the item
						item = lsp_zero
							.cmp_format({
								-- any lsp_zero format settings here (e.g., max_width, details, etc.)
							})
							.format(entry, item)

						-- If nvim-highlight-colors applied any custom highlights, apply them back
						if color_item.abbr_hl_group then
							item.kind_hl_group = color_item.abbr_hl_group
							item.kind = color_item.abbr -- Use the abbreviated highlight color
						end

						return item
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(), -- Previous item
					["<C-n>"] = cmp.mapping.select_next_item(), -- Next item
					["<C-s>"] = cmp.mapping.complete(), -- Start completion
					["<C-e>"] = cmp.mapping.close(), -- Close completion
					["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Complete
				}),
			})
		end,
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		cmd = { "LspInfo", "LspInstall", "LspStart" },
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "folke/neodev.nvim" },
		},
		config = function()
			-- Neodev Setup (Has to be done before LSP Zero Setup)
			require("neodev").setup({})

			-- LSP Zero Setup
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_lspconfig()
			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			-- LSP Config Setup w/ Mason integration
			require("mason-lspconfig").setup({
				ensure_installed = {},
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						-- (Optional) Configure lua language server for neovim
						local lua_opts = lsp_zero.nvim_lua_ls()
						require("lspconfig").lua_ls.setup(lua_opts)
					end,
					glsl_analyzer = function()
						require("lspconfig").glsl_analyzer.setup({
							root_dir = require("lspconfig").util.root_pattern(".git", ".root", ".project", ".hg"),
							fileypes = { "glsl", "vert", "frag", "geom", "comp" },
						})
					end,
					ts_ls = function()
						require("lspconfig").tsserver.setup({
							filetypes = {
								"javascript",
								"javascriptreact",
								"javascript.jsx",
								"typescript",
								"typescriptreact",
								"typescript.tsx",
								"markdown.mdx",
								"mdx",
							},
						})
					end,
					mdx_analyzer = function()
						require("lspconfig").mdx_analyzer.setup({
							filetypes = { "markdown.mdx", "mdx" },
						})
					end,
				},
			})

			vim.diagnostic.config({
				virtual_text = true,
				underline = true,
			})
		end,
	},

	-- LSP Saga
	{
		"nvimdev/lspsaga.nvim",
		lazy = true,
		event = { "LspAttach" },
		keys = {
			{ "K", "<CMD>Lspsaga hover_doc<CR>", desc = "Hover" },
			{ "L", "<CMD>Lspsaga show_line_diagnostics<CR>", desc = "Show Line Diagnostics" },
			{ "gd", "<CMD>Lspsaga goto_definition<CR>zz", desc = "Go to Definition" },
			{ "<leader>o", "<CMD>Lspsaga outline<CR>", desc = "Toggle Code Outline" },
			{ "<leader>lq", "<CMD>Lspsaga finder<CR>", desc = "Definition & References" },
			{ "<leader>lr", "<CMD>Lspsaga rename ++project<CR>", desc = "Rename" },
			{ "<leader>ld", "<CMD>Lspsaga peek_definition<CR>", desc = "Peek Definition" },
			{ "<leader>lt", "<CMD>Lspsaga peek_type_definition<CR>", desc = "Peek Type Definition" },
			{ "<leader>lb", "<CMD>Lspsaga show_buf_diagnostics<CR>", desc = "Buffer Diagnostics" },
			{ "<leader>lw", "<CMD>Lspsaga show_workspace_diagnostics ++float<CR>", desc = "Workspace Diagnostics" },
			{ "<leader>la", "<CMD>Lspsaga code_action<CR>", desc = "Code Action" },
			{
				"[e",
				function()
					require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
				end,
				desc = "Previous Error",
			},
			{
				"]e",
				function()
					require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
				end,
				desc = "Next Error",
			},
			{
				"[d",
				function()
					require("lspsaga.diagnostic"):goto_prev()
				end,
				desc = "Previous Diagnostic",
			},
			{
				"]d",
				function()
					require("lspsaga.diagnostic"):goto_next()
				end,
				desc = "Next Diagnostic",
			},
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
				},
				hover = {
					max_width = 0.5,
					max_height = 0.5,
				},
			})
		end,
	},
}
