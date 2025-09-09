return {
	"aaronik/treewalker.nvim",
	opts = {
		highlight = false,
	},
	keys = {
    -- movement
    { "<C-k>", "<cmd>Treewalker Up<cr>", mode = { "n", "v" } },
    { "<C-j>", "<cmd>Treewalker Down<cr>", mode = { "n", "v" } },
    { "<C-h>", "<cmd>Treewalker Left<cr>", mode = { "n", "v" } },
    { "<C-l>", "<cmd>Treewalker Right<cr>", mode = { "n", "v" } },

    -- swapped
    { "<C-S-k>", "<cmd>Treewalker SwapUp<cr>", mode = { "n", "v" } },
    { "<C-S-j>", "<cmd>Treewalker SwapDown<cr>", mode = { "n", "v" } },
    { "<C-S-h>", "<cmd>Treewalker SwapLeft<cr>", mode = { "n", "v" } },
    { "<C-S-l>", "<cmd>Treewalker SwapRight<cr>", mode = { "n", "v" } },
	},
}
