return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = { "python", "c", "vim", "lua", "query", "markdown", "bash", }, -- Removed duplicate "vim"
                auto_install = true,
                highlight = {
                    enable = true, -- here some people disagrees but I like it to get me highlighting for any filetype that I open up.
                },
                additional_vim_regex_highlighting = false,
            }
        end,
    }
}

