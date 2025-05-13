return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        lazy = false,
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup({
                options = {
                    mode = "buffers", -- or "tabs"
                    numbers = "ordinal", -- show buffer numbers
                    separator_style = "thin", -- or "thin", "padded_slant", etc.
                    diagnostics = "nvim_lsp", -- show LSP diagnostics in tabline
                    show_buffer_close_icons = true,
                    show_close_icon = false,
                    always_show_bufferline = false,
                    color_icons = true,
                    enforce_regular_tabs = false,
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "✨ EXPLORER",
                            text_align = "center",
                            separator = false
                        }
                    }
                }
            })
        end
    }
}
