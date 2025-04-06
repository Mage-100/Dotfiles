-- No global clipboard usage
vim.opt.clipboard = ""

-- Use the clipboard explicitly with registers
vim.g.clipboard = {
    name = "xclip",
    copy = {
        ["+"] = "xclip -selection clipboard",
        ["*"] = "xclip -selection primary",
    },
    paste = {
        ["+"] = "xclip -selection clipboard -o",
        ["*"] = "xclip -selection primary -o",
    },
    cache_enabled = 0,
}

