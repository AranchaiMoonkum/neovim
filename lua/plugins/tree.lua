return {
    "nvim-tree/nvim-tree.lua",
    init = function()
        require "which-key".add({
            { "<leader>e", "<CMD>NvimTreeToggle<CR>", desc = "Tree toggle", mode = "n" },
        })
    end,
    config = true,
}
