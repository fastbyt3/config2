require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "vim",
    "lua",
    "php",
    "json",
    "yaml",
    "java",
    "c",
    "cpp",
    "python"
  },
}
