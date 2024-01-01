require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "c_sharp",
        "dockerfile",
        "elixir",
        "git_config",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "ruby",
        "rust",
        "sql",
        "typescript",
        "vala",
        "xml",
        "yaml",
        "zig",
    },

    sync_install = false,

    -- Automagically install missing parsers
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

