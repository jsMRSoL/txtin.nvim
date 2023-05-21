local M = {}

M.setup = function()
  vim.cmd("command! -range -nargs=0 JoinLines :lua require('txtin.trans').join_lines(<line1>, <line2>)")
  vim.cmd("command! -nargs=0 ProcessFile lua require('txtin.clean').process_file()<CR>")
  vim.cmd("command! -nargs=0 ShortenDictEntries lua require('txtin.trans').shorten_dictionary_entries()<CR>")
  vim.cmd("command! -nargs=0 RemoveCommon lua require('txtin.clean').remove_common_words()<CR>")
  vim.cmd [[command! -range NumberLines lua require('txtin.trans').number_lines(<line1>, <line2>)]]
  vim.cmd [[command! -range AlignOnChar lua require('txtin.trans').align_on_char(<line1>, <line2>)]]
end

return M
