print('asciifonts')
local M = {}
function M.get_font_name()

  local opts = {
    prompt_title= "~ FONT SELECTION ~",
    shorten_path = false,
    cwd = "~/Development/Plugins/asciifonts.nvim/font-previews",
    attach_mappings = function(_, map)
      map("i", "<CR>", function(prompt_bufnr)
        -- filename is available at entry[1]
        local entry = require("telescope.actions.state").get_selected_entry()
        require("telescope.actions").close(prompt_bufnr)
        local filename = entry[1]
        -- Insert filename in current cursor position
        vim.cmd('normal i' .. filename)
      end
      )
      return true
    end,
  }
  require('telescope.builtin').find_files(opts)
end

return M

