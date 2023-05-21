-- A collection of function to manipulate text.

local transformations = {}

function transformations.para_to_lines()
  local current_line, _ = unpack(vim.api.nvim_win_get_cursor(0))
  vim.cmd("normal vip")
  local start_row
  start_row = vim.fn.line("v")
  vim.cmd("normal d")
  local text_block = vim.fn.getreg('"')
  local text = vim.fn.substitute(text_block, "\n", " ", "g")
  text = vim.fn.substitute(text, ";", ";<sp>", "g")
  text = vim.fn.substitute(text, ":", ":<sp>", "g")
  text = vim.fn.substitute(text, "!", "!<sp>", "g")
  text = vim.fn.substitute(text, "\\. ", ".<sp>", "g")
  text = vim.fn.substitute(text, "<sp> ", "<sp>", "g")
  local lines = vim.fn.split(text, "<sp>")
  if start_row > 0 then start_row = start_row - 1 end
  vim.api.nvim_buf_set_lines(0, start_row, start_row, true, lines)
  vim.api.nvim_win_set_cursor(0, { current_line, 0 })
end

function transformations.number_lines(line1, line2)
  local count = 1 + line2 - line1
  local lines = vim.api.nvim_buf_get_lines(0, line1 - 1, line2, nil)
  local total = count
  local newlines = {}
  for i = 1, total, 1 do
    newlines[i] = i .. "./ " .. lines[i]
  end
  vim.api.nvim_buf_set_lines(0, line1 - 1, line2, nil, newlines)
end

function transformations.number_lines2()
  local line1 = vim.fn.line("v")
  local line2 = vim.fn.line(".")
  local count = 1 + line2 - line1
  local lines = vim.api.nvim_buf_get_lines(0, line1 - 1, line2, nil)
  local total = count
  local newlines = {}
  for i = 1, total, 1 do
    newlines[i] = i .. "./ " .. lines[i]
  end
  vim.api.nvim_buf_set_lines(0, line1 - 1, line2, nil, newlines)
  transformations.collapse_selection()
end

function transformations.collapse_selection()
  local key = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
  vim.api.nvim_feedkeys(key, "v", true)
end

function transformations.clear_echo_area()
  vim.api.nvim_feedkeys(":", "nx", true)
end

function transformations.shorten_dictionary_entries()
  -- shorten domina, dominae f. to domina 1f.
  vim.cmd([[silent %s/\(\w\{-}\),\s\1e\s\(f\.\)/\1 1\2/e]])
  -- shorten amicus, amici m. to amicus 2m.
  vim.cmd([[silent %s/\(.\{-}\)us,\s\1i\s\(m\.\)/\1us 2\2/e]])
  -- shorten puer, pueri m. to puer 2m.
  vim.cmd([[silent %s/\(.\{-}\)er,\s\1eri\s\(m\.\)/\1er 2\2/e]])
  -- shorten donum, doni n. to donum 2n.
  vim.cmd([[silent %s/\(.\{-}\)um,\s\1i\s\(n\.\)/\1um 2\2/e]])
  -- shorten mercator, mercatoris m. to mercator, -is 3m.
  vim.cmd([[silent %s/\(\w\{-}\),\s\1is\s\([mfn]\.\)/\1, -is 3\2/e]])
  -- shorten brevitas, brevitatis f. to brevitas, -atis 3f.
  vim.cmd([[silent %s/\(.\{-}\)s,\s\1tis\s\(f\.\)/\1s, -atis 3\2/e]])
  -- shorten manus, manus f. to manus, -us 4f.
  vim.cmd([[silent %s/\(\w\{-}\),\s\1\s\([mfn]\.\)/\1 4\2/e]])
  -- shorten spes, spei f. to spes 5f.
  vim.cmd([[silent %s/\(.\{-}\)es,\s\1ei\s\(f\.\)/\1es 5\2/e]])
  -- shorten voco, vocare, vocavi, vocatum to voco (1)
  vim.cmd([[silent %s/\(.\{-}\)o,\s\1are,\s\1avi,\s\1atu[ms]/\1o 1/e]])
  -- shorten do, dare, dedi, datum to do, (1), dedi, datum
  vim.cmd([[silent %s/\(.\{-}\)o,\s\1are,\s\(.*\)/\1o 1, \2/e]])
  -- shorten moneo, monere, monui, monitum to moneo (2)
  vim.cmd([[silent %s/\(.\{-}\)eo,\s\1ere,\s\1ui,\s\1itu[ms]/\1eo 2/e]])
  -- shorten vireo, virere, virui to vireo 2
  vim.cmd([[silent %s/\(.\{-}\)eo,\s\1ere\(.*\)/\1eo 2\2/e]])
  -- shorten audio, audire, audivi, auditum to audio (4)
  vim.cmd([[silent %s/\(.\{-}\)io,\s\1ire,\s\1ivi,\s\1itu[ms]/\1io 4/e]])
  -- shorten venio, venire, veni, ventum to venio 4, veni, ventum
  vim.cmd([[silent %s/\(.\{-}\)io,\s\1ire\(.*\)/\1io 4\2/e]])
  -- shorten cvim.vim.vim.apio, capere, cepi, captum to capio, (3.5), cepi, captum
  vim.cmd([[silent %s/\(.\{-}\)io,\s\1ere,\s\(.*\)/\1io 3.5, \2/e]])
  -- shorten traho, trahere, traxi, tractum to traho, (3), traxi, tractum
  vim.cmd([[silent %s/\(.\{-}\)o,\s\1ere,\s\(.*\)/\1o 3, \2/e]])
  -- shorten adjective endings
  vim.cmd([[silent %s/\(.\{-}\)us,\s\1a,\s\1um/\1us 212/e]])
  vim.cmd([[silent %s/\(.\{-}\)us,\s-a,\s-um/\1us 212/e]])
  -- fix legacy (1) (change to 1)
  vim.cmd([[silent %s/(\(\d\))/\1/e]])
  -- remove padding round :
  vim.cmd([[silent %s/\s:/:/e]])
  -- remove I on verbs
  vim.cmd([[silent %s/: I/:/e]])
end

function transformations.join_lines(line1, line2)
  local count = 1 + line2 - line1
  if count % 2 ~= 0 then
    print("You must select an even number of lines.")
    return
  end
  local lines = vim.api.nvim_buf_get_lines(0, line1 - 1, line2, nil)
  local total = count / 2
  local newlines = {}
  for i = 1, total, 1 do
    newlines[i] = lines[i] .. " " .. lines[i + total]
  end
  vim.api.nvim_buf_set_lines(0, line1 - 1, line2, nil, newlines)
end

function transformations.eval_line()
  local line = vim.api.nvim_get_current_line()
  vim.cmd("lua " .. line)
end

transformations.align_on_char = function(line1, line2)
  local lines = vim.api.nvim_buf_get_lines(0, line1 - 1, line2, nil)
  local count = 1 + line2 - line1
  local char = vim.fn.input("Enter character to align on: ")
  local newlines = {}
  local longest = 0
  for i = 1, count, 1 do
    if lines[i]:find(char) then
      P(lines[i])
      newlines[i] = vim.fn.split(lines[i], char)
      if #newlines[i][1] > longest then
        longest = #newlines[i][1]
      end
    else
      newlines[i] = lines[i]
    end
  end
  local fmt = "%-" .. longest .. "s"
  for i = 1, count, 1 do
    if #newlines[i] > 1 then
      local first = vim.fn.printf(fmt, newlines[i][1])
      newlines[i] = first .. char .. newlines[i][2]
    end
  end
  vim.api.nvim_buf_set_lines(0, line1 - 1, line2, nil, newlines)
end

-- This works with calling from which-key, whereas align_on_char doesn't!?
transformations.align_on_char2 = function()
  local line1 = vim.fn.line("v")
  local line2 = vim.fn.line(".")
  transformations.align_on_char(line1, line2)
  transformations.collapse_selection()
  transformations.clear_echo_area()
end

transformations.keep_lines = function()
  local rng = ""
  if vim.fn.mode() == "V" then
    local line1 = vim.fn.line("v")
    local line2 = vim.fn.line(".")
    rng = line1 .. "," .. line2
    -- print(rng)
  end
  local regexp = vim.fn.input("Exclude lines on regexp: ")
  vim.cmd("execute " .. "'silent " .. rng .. "vglobal/" .. regexp .. "/d'")
  vim.opt.hlsearch = false
end

transformations.flush_lines = function()
  local rng = ""
  if vim.fn.mode() == "V" then
    local line1 = vim.fn.line("v")
    local line2 = vim.fn.line(".")
    rng = line1 .. "," .. line2
    -- print(rng)
  end
  local regexp = vim.fn.input("Exclude lines on regexp: ")
  vim.cmd("execute " .. "'silent " .. rng .. "global/" .. regexp .. "/d'")
  vim.opt.hlsearch = false
end

transformations.flush_empty_lines = function()
  local rng = ""
  if vim.fn.mode() == "V" then
    local line1 = vim.fn.line("v")
    local line2 = vim.fn.line(".")
    rng = line1 .. "," .. line2
  end
  vim.cmd("execute " .. "'silent " .. rng .. "global/^$/d'")
  vim.opt.hlsearch = false
end


transformations.buffer_to_list = function()
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, nil)
  local tokens = {}
  local words = {}
  for _, line in pairs(lines) do
    line = vim.fn.substitute(line, "[\"':,;\\.!\\?`]", "", "g")
    -- P(line)
    words = vim.fn.split(line, " ")
    for _, word in pairs(words) do
      if #word > 0 then
        table.insert(tokens, word)
      end
    end
  end
  tokens = vim.fn.sort(tokens)
  tokens = vim.fn.uniq(tokens)
  -- P(tokens)
  return tokens
end


return transformations
