local M = {}

M.setup = function()
  local cmd = vim.api.nvim_create_user_command

  cmd('JoinLines', function(opts)
    require('txtin.trans').join_lines(opts.line1, opts.line2)
  end, { range = true })

  cmd('ProcessFile', function()
    require('txtin.clean').process_file()
  end, {})

  cmd('ShortenDictEntries', function()
    require('txtin.trans').shorten_dictionary_entries()
  end, {})

  cmd('RemoveCommon', function()
    require('txtin.clean').remove_common_words()
  end, {})

  cmd('NumberLines', function(opts)
    require('txtin.trans').number_lines(opts.line1, opts.line2)
  end, { range = true })

  cmd('RenumberLines', function(opts)
    require('txtin.trans').renumber_lines(opts.line1, opts.line2)
  end, { range = true })

  cmd('AlignOnChar', function(opts)
    require('txtin.trans').align_on_char(opts.line1, opts.line2)
  end, { range = true })

  cmd('FlushLinesRegexp', function()
    require('txtin.trans').flush_lines()
  end, {})

  cmd('KeepLines', function()
    require('txtin.trans').keep_lines()
  end, {})

  cmd('FlushEmptyLines', function()
    require('txtin.trans').flush_empty_lines()
  end, {})

  cmd('PopupDiacritics', function()
    require('txtin.diacritics').popup_diacritic_words()
  end, {})

  cmd('SplitPara', function()
    require('txtin.trans').para_to_lines()
  end, {})
end

return M
