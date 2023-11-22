print('init')
vim.api.nvim_set_keymap('n', '<Leader>ö', [[<Cmd>lua require('asciifonts-functions').get_font_name()<CR>]], {})
