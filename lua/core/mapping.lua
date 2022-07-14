local api = require("utils.api")

api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "<leader><esc>",
        rhs = ":qa!<cr>",
        options = { silent = true },
        description = "Escape Neovim",
    },
    {
        mode = { "i" },
        lhs = "jj",
        rhs = "<esc>",
        options = { silent = true },
        description = "Escape editor insert mode",
    },
    {
        mode = { "t" },
        lhs = "<esc>",
        rhs = "<c-\\><c-n>",
        options = { silent = true },
        description = "Escape terminal insert mode",
    },
    {
        mode = { "n" },
        lhs = "<esc>",
        rhs = ":noh<cr>",
        options = { silent = true },
        description = "Clear search highlight",
    },
    {
        mode = { "n" },
        lhs = "<c-u>",
        rhs = function()
            vim.cmd("normal! " .. math.ceil(vim.api.nvim_win_get_height(0) / 4) .. "k")
        end,
        options = { silent = true },
        description = "Move 1/4 screen up",
    },
    {
        mode = { "n" },
        lhs = "<c-d>",
        rhs = function()
            vim.cmd("normal! " .. math.ceil(vim.api.nvim_win_get_height(0) / 4) .. "j")
        end,
        options = { silent = true },
        description = "Move 1/4 screen down",
    },
    {
        mode = { "n" },
        lhs = "<leader>cs",
        rhs = ":set spell!<cr>",
        options = { silent = true },
        description = "Enable or disable spell checking",
    },
    {
        mode = { "c" },
        lhs = "<m-p>",
        rhs = "<up>",
        options = {},
        -- overload
    },
    {
        mode = { "c" },
        lhs = "<m-n>",
        rhs = "<down>",
        options = {},
        description = "Look down history",
    },
    {
        mode = { "n", "v" },
        lhs = "k",
        rhs = function()
            return vim.v.count > 0 and "k" or "gk"
        end,
        options = { silent = true, expr = true },
        description = "Move up one line",
    },
    {
        mode = { "n", "v" },
        lhs = "j",
        rhs = function()
            return vim.v.count > 0 and "j" or "gj"
        end,
        options = { silent = true, expr = true },
        description = "Move down one line",
    },
    {
        mode = { "n", "v" },
        lhs = "H",
        rhs = function()
            return vim.v.count > 0 and "^" or "g^"
        end,
        options = { silent = true, expr = true },
        description = "Move to the first character at the beginning of the line",
    },
    {
        mode = { "n", "v" },
        lhs = "L",
        rhs = function()
            return vim.v.count > 0 and "$" or "g$"
        end,
        options = { silent = true, expr = true },
        description = "Move to the last character at the end of the line",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-w>",
        rhs = "<c-right>",
        options = {},
        description = "Jump to next word in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-b>",
        rhs = "<c-left>",
        options = {},
        description = "Jump to previous word in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-k>",
        rhs = "<up>",
        options = {},
        description = "Move cursor up in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-j>",
        rhs = "<down>",
        options = {},
        description = "Move cursor down in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-h>",
        rhs = "<left>",
        options = {},
        description = "Move cursor left in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-l>",
        rhs = "<right>",
        options = {},
        description = "Move cursor right in insert mode",
    },
    
    {
        mode = { "n" },
        lhs = "<c-k>",
        rhs = "<c-w>k",
        options = { silent = true },
        description = "Move to upper window",
    },
    {
        mode = { "n" },
        lhs = "<c-j>",
        rhs = "<c-w>j",
        options = { silent = true },
        description = "Move to below window",
    },
    {
        mode = { "n" },
        lhs = "<c-h>",
        rhs = "<c-w>h",
        options = { silent = true },
        description = "Move to left window",
    },
    {
        mode = { "n" },
        lhs = "<c-l>",
        rhs = "<c-w>l",
        options = { silent = true },
        description = "Move to right window",
    },
    {
        mode = { "t" },
        lhs = "<c-k>",
        rhs = "<c-\\><c-n><c-w>k",
        options = { silent = true },
        description = "Move to upper window",
    },
    {
        mode = { "t" },
        lhs = "<c-j>",
        rhs = "<c-\\><c-n><c-w>j",
        options = { silent = true },
        description = "Move to below window",
    },
    {
        mode = { "t" },
        lhs = "<c-h>",
        rhs = "<c-\\><c-n><c-w>h",
        options = { silent = true },
        description = "Move to left window",
    },
    {
        mode = { "t" },
        lhs = "<c-l>",
        rhs = "<c-\\><c-n><c-w>l",
        options = { silent = true },
        description = "Move to right window",
    },
    {
        mode = { "n" },
        lhs = "<c-up>",
        rhs = "<c-w>-",
        options = { silent = true },
        description = "Reduce horizontal split screen size",
    },
    {
        mode = { "n" },
        lhs = "<c-down>",
        rhs = "<c-w>+",
        options = { silent = true },
        description = "Increase horizontal split screen size",
    },
    {
        mode = { "n" },
        lhs = "<c-left>",
        rhs = "<c-w><",
        options = { silent = true },
        description = "Reduce vertical split screen size",
    },
    {
        mode = { "n" },
        lhs = "<c-right>",
        rhs = "<c-w>>",
        options = { silent = true },
        description = "Increase vertical split screen size",
    },
    {
        mode = { "n" },
        lhs = "<leader>cd",
        rhs = ":source %<cr>",
        options = { silent = true },
        description = "Source this file",
    },
    {
        mode = { "n" },
        lhs = "<leader>rc",
        rhs = "<cmd>!g++ % -o %.out && %.out<cr>",
        options = { silent = true },
        description = "Run this cpp file",
    },
    {
        mode = { "i" },
        lhs = "jk",
        rhs = "<esc>",
        options = { silent = true },
        description = "Escape editor insert mode",
    },
    {
        mode = { "t" },
        lhs = "<esc>",
        rhs = "<c-\\><c-n>",
        options = { silent = true },
        description = "Escape terminal insert mode",
    },
    {
        mode = { "t" },
        lhs = "jk",
        rhs = "<c-\\><c-n>",
        options = { silent = true },
        description = "Escape terminal insert mode",
    },
})
