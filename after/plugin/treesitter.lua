require'nvim-treesitter.configs'.setup {
  ensure_installed = {},
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    edditional_vim_regex_highlighting = false,
  },

  autotag = {
     enable = true,
     enable_rename = true,
     enable_close = true,
     enable_close_on_slash = true,
     filetypes = { 'html', 'xml' },
  }
}
