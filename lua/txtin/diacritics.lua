local M = {}

M.popup_diacritic_words = function()
  vim.cmd("normal yl")
  local cur_wrd = vim.fn.getreg('"')
  -- P(cur_wrd)
  local filtered = {}
  local tokens = M.get_diacritic_words()
  for _, entry in ipairs(tokens) do
    if entry:find(cur_wrd) then
      local head = vim.fn.split(entry, " #")[1]
      table.insert(filtered, head)
    end
  end
  local mappings = {
    -- ['['] = 'update_view(-1)',
    ["<cr>"] = 'yiw:q<CR>"_xP',
  }
  M.floating_win(filtered, mappings)
end

M.floating_win = function(tokens, keymap)
  -- local tokens = sp_funcs.buffer_to_list()
  local longest = 0
  for _, word in pairs(tokens) do
    if #word > longest then
      longest = #word
    end
  end

  -- set up buffer for floating window
  local new_buf = vim.api.nvim_create_buf(false, true) -- create new empty buffer
  vim.api.nvim_buf_set_option(new_buf, "bufhidden", "wipe")

  -- set up buffer local mappings
  for k, v in pairs(keymap) do
    vim.api.nvim_buf_set_keymap(new_buf, "n", k, v, {
      nowait = true,
      noremap = true,
      silent = true,
    })
  end
  -- get cursor position
  local pos = vim.api.nvim_win_get_cursor(0)
  local line, col = pos[1], pos[2]
  -- P(line)
  -- P(col)
  -- calculate our floating window size
  local win_height = #tokens
  local win_width = longest + 2

  -- set some options
  local opts = {
    style = "minimal",
    relative = "editor",
    width = win_width,
    height = win_height,
    border = "single",
    -- bufpos = { line, col + 5},
    row = line,
    col = col,
  }

  -- and finally create it with buffer attached
  local win
  win = vim.api.nvim_open_win(new_buf, true, opts)
  vim.api.nvim_buf_set_lines(new_buf, 0, -1, false, tokens)
  -- customize highlighting
  -- vim.cmd [[highlight MyNormalFloat gui=italic guifg=#a0a8b0 guibg=#000000]]
  -- vim.api.nvim_win_set_option(win, "winhl", "NormalFloat:MyNormalFloat")
  vim.api.nvim_win_set_option(win, "winhl", "NormalFloat:NormalFloat")
end

M.get_diacritic_words = function()
  local tokens = M.read_array(
    "/home/simon/.config/nvim/lua/common_greek.txt"
  )
  return tokens
end

M.read_array = function(file)
  local arr = {}
  local handle = assert(io.open(file, "r"))
  local value = handle:read("*line")
  while value do
    table.insert(arr, value)
    value = handle:read("*line")
  end
  handle:close()
  return arr
end

return M
