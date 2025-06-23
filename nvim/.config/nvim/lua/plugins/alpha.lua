return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			[[          ▀████▀▄▄              ▄█ ]],
			[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
			[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
			[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
			[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
			[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
			[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
			[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
			[[   █   █  █      ▄▄           ▄▀   ]],
		}

		-- Set menu buttons
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Restore Session", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Layout with padding for vertical centering
		dashboard.config.layout = {
			{ type = "padding", val = 5 }, -- Push down the header
			dashboard.section.header,
			{ type = "padding", val = 2 }, -- Space between header and buttons
			dashboard.section.buttons,
		}

		-- Setup and options
		alpha.setup(dashboard.config)
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
