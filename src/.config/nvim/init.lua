-- Plugin Config
do
    local Plug = vim.fn["plug#"]

    vim.call("plug#begin")
    do
        Plug("APZelos/blamer.nvim")
        Plug("AndrewRadev/linediff.vim")
        Plug("airblade/vim-gitgutter")
        Plug("dense-analysis/ale")
        Plug("godlygeek/tabular")
        Plug("gregsexton/MatchTag")
        Plug("sheerun/vim-polyglot")
    end
    vim.call("plug#end")

    vim.g.ale_fixers = {
        c = { "astyle" },
        cpp = { "astyle" },
        css = { "prettier" },
        hcl = { "packer" },
        html = { "prettier" },
        java = { "google_java_format" },
        javascript = { "prettier" },
        json = { "jq" },
        lua = { "stylua" },
        markdown = { "prettier" },
        perl = { "perltidy" },
        python = { "isort", "black" },
        ruby = { "prettier" },
        sh = { "shfmt" },
        sql = { "sqlfluff" },
        terraform = { "terraform" },
        typescript = { "prettier" },
        xml = { "xmllint" },
        yaml = { "prettier" },
    }

    vim.g.ale_linters_ignore = {
        java = { "checkstyle" },
        python = { "pyright", "ruff" },
    }

    vim.g.ale_java_google_java_format_options = "--aosp"
    vim.g.ale_json_jq_options = "-S --indent 4"
    vim.g.ale_python_flake8_options = "--ignore=E501"
    vim.g.ale_python_isort_options = "--profile=black"
    vim.g.ale_python_ruff_options = "--ignore=E501"
    vim.g.ale_sql_sqlfluff_options = "--dialect postgres"
    vim.g.ale_virtualtext_cursor = "disabled"

    vim.g.blamer_date_format = "%Y-%m-%dT%H:%M:%S%Z"
    vim.g.blamer_delay = 0
    vim.g.blamer_enabled = true
    vim.g.blamer_show_in_insert_modes = false
    vim.g.blamer_show_in_visual_modes = false
    vim.g.blamer_template = "<committer-mail> <committer-time> <summary>"
    vim.g.java_ignore_markdown = true
end
-- End of Plugin Config

vim.opt.autoindent = true
vim.opt.background = "dark"
vim.opt.backspace = "2"
vim.opt.belloff = "all"
vim.opt.colorcolumn = "73,81,101,121"
vim.opt.expandtab = true
vim.opt.fileformats = { "unix" }
vim.opt.guicursor = ""
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.laststatus = 0
vim.opt.modeline = false
vim.opt.redrawtime = 10000
vim.opt.scrolloff = 5
vim.opt.shiftwidth = 4
vim.opt.synmaxcol = 0
vim.opt.tabstop = 4
vim.opt.termguicolors = false
vim.opt.updatetime = 250

vim.cmd.colorscheme("vim")

vim.api.nvim_set_hl(0, "Blamer", { ctermfg = "lightgray" })
vim.api.nvim_set_hl(0, "GitGutterAdd", { ctermfg = "darkgreen" })
vim.api.nvim_set_hl(0, "GitGutterChange", { ctermfg = "darkyellow" })
vim.api.nvim_set_hl(0, "GitGutterDelete", { ctermfg = "darkred" })

vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = "darkgray" })
vim.api.nvim_set_hl(0, "StatusLine", { ctermbg = "darkgray", ctermfg = "black" })
vim.api.nvim_set_hl(0, "StatusLineNC", { ctermbg = "darkgray", ctermfg = "black" })
vim.api.nvim_set_hl(0, "TabLine", { ctermbg = "black", ctermfg = "darkgray" })
vim.api.nvim_set_hl(0, "TabLineFill", { ctermfg = "black" })
vim.api.nvim_set_hl(0, "TabLineSel", { ctermbg = "black" })
vim.api.nvim_set_hl(0, "VertSplit", { ctermbg = "darkgray", ctermfg = "black" })

do
    local group = vim.api.nvim_create_augroup("vimrc", { clear = true })
    vim.api.nvim_create_autocmd({ "BufNew", "BufRead" }, {
        pattern = "*",
        command = "syntax sync fromstart",
        group = group,
    })
end

-- Keybinding Overrides
do
    local modes = { "c", "i", "n", "v" }
    local keys1 = { "<", "<C-", "<S-" }
    local keys2 = { "BS>", "Up>", "Down>", "Left>", "Right>", "PageUp>", "PageDown>", "Home>", "End>" }

    for _, mode in ipairs(modes) do
        for _, key1 in ipairs(keys1) do
            for _, key2 in ipairs(keys2) do
                vim.api.nvim_set_keymap(mode, key1 .. key2, "<Nop>", { noremap = true, silent = true })
            end
        end
    end

    -- Easing these until C-p takes already-typed text into account.
    vim.api.nvim_del_keymap("c", "<Up>")
    vim.api.nvim_del_keymap("c", "<Down>")
end
-- End of Keybinding Overrides
