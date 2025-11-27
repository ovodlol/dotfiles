require("bunny"):setup({
	hops = {
		-- Configurações
		{ key = { "c", "y" }, path = "~/.config/yazi", desc = "Configurações do Yazi" },
		{ key = { "c", "n" }, path = "~/.config/nvim", desc = "Configurações do nvim" },
		{ key = { "c", "f" }, path = "~/.config/fish", desc = "Configurações do meu fish" },
		{ key = { "c", "c" }, path = "~/.config", desc = "Configurações" },
		-- Outros,,,,,,
		{ key = "g", path = "~/go/src", desc = "Meus projetos do Golang" },
		{ key = "h", path = "~/", desc = "A pasta principal" },
	},
	desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
	ephemeral = true, -- Enable ephemeral hops, default is true
	tabs = true, -- Enable tab hops, default is true
	notify = false, -- Notify after hopping, default is false
	fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})

require("recycle-bin"):setup()
