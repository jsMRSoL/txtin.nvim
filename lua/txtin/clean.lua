-- This module is a collection of functions which
-- process 'dirty' text, typically text that has
-- been produced by imperfect OCR.

local text_cleaning = {}

function text_cleaning.clean_file()
  vim.cmd([[silent g/^$/d]])
  vim.cmd([[silent %s/^* //e]])
  vim.cmd([[silent %s/^*//e]])
  vim.cmd([[silent %s/^' //e]])
  vim.cmd([[silent %s/^'//e]])
  vim.cmd([[silent %s/^` //e]])
  vim.cmd([[silent %s/^`//e]])
  vim.cmd([[silent %s/,\n/, /e]])
  vim.cmd([[silent %s/  / /ge]])
  vim.cmd([[silent %s/ab]/abl/ge]])
  vim.cmd([[silent %s/4- acc/+ acc/e]])
  vim.cmd([[silent %s/4- abl/+ abl/e]])
  vim.cmd([[silent %s/4— acc/+ acc/e]])
  vim.cmd([[silent %s/4— abl/+ abl/e]])
  vim.cmd([[silent %s/—/-/e]])
  vim.cmd([[silent %s/4- /+ /e]])
  vim.cmd([[silent %s/\[ /I /ge]])
  vim.cmd([[silent %s/\] /I /ge]])
  vim.cmd([[silent %s/l /I /ge]])
  vim.cmd([[silent %s/1 /I /ge]])
  vim.cmd([[silent %s/( /(/ge]])
  vim.cmd([[silent %s/ )/)/ge]])
  vim.cmd([[silent %s/111\./m./ge]])
end

function text_cleaning.correct_diacritics()
  vim.cmd([[silent %s/ä/ā/ge]])
  vim.cmd([[silent %s/ë/ē/ge]])
  vim.cmd([[silent %s/ï/ī/ge]])
  vim.cmd([[silent %s/ö/ō/ge]])
  vim.cmd([[silent %s/ü/ū/ge]])
end

function text_cleaning.process_file()
  text_cleaning.clean_file()
  text_cleaning.correct_diacritics()
  text_cleaning.remove_diacritics()
end

function text_cleaning.remove_diacritics()
  vim.cmd([[silent %s/ā/a/ge]])
  vim.cmd([[silent %s/ē/e/ge]])
  vim.cmd([[silent %s/ī/i/ge]])
  vim.cmd([[silent %s/ō/o/ge]])
  vim.cmd([[silent %s/ū/u/ge]])
end

function text_cleaning.remove_common_words()
  vim.cmd([[silent %s/- ubi .*\n//ge]])
  vim.cmd([[silent %s/- in .*\n//ge]])
  vim.cmd([[silent %s/- a .*\n//ge]])
  vim.cmd([[silent %s/- ad .*\n//ge]])
  vim.cmd([[silent %s/- ab .*\n//ge]])
  vim.cmd([[silent %s/- e .*\n//ge]])
  vim.cmd([[silent %s/- ex .*\n//ge]])
  vim.cmd([[silent %s/- cum .*\n//ge]])
  vim.cmd([[silent %s/- et .*\n//ge]])
  vim.cmd([[silent %s/- nec .*\n//ge]])
  vim.cmd([[silent %s/- equus,.*\n//ge]])
  vim.cmd([[silent %s/- rex,.*\n//ge]])
  vim.cmd([[silent %s/- vox,.*\n//ge]])
  vim.cmd([[silent %s/- qui,.*\n//ge]])
  vim.cmd([[silent %s/- enim .*\n//ge]])
  vim.cmd([[silent %s/- ut .*\n//ge]])
  vim.cmd([[silent %s/- ne .*\n//ge]])
  vim.cmd([[silent %s/- mons,.*\n//ge]])
  vim.cmd([[silent %s/- hic,.*\n//ge]])
  vim.cmd([[silent %s/- ille,.*\n//ge]])
  vim.cmd([[silent %s/- romanus,.*\n//ge]])
  vim.cmd([[silent %s/- pugna,.*\n//ge]])
  vim.cmd([[silent %s/- dux,.*\n//ge]])
  vim.cmd([[silent %s/- castro,.*\n//ge]])
  vim.cmd([[silent %s/- castra,.*\n//ge]])
  vim.cmd([[silent %s/- audio,.*\n//ge]])
  vim.cmd([[silent %s/- dico,.*\n//ge]])
  vim.cmd([[silent %s/- edo,.*\n//ge]])
  vim.cmd([[silent %s/- castrum,.*\n//ge]])
  vim.cmd([[silent %s/- Non\.,.*\n//ge]])
  vim.cmd([[silent %s/- alium,.*\n//ge]])
  vim.cmd([[silent %s/- Indus,.*\n//ge]])
  vim.cmd([[silent %s/- antis,.*\n//ge]])
  vim.cmd([[silent %s/- armum,.*\n//ge]])
  vim.cmd([[silent %s/- armo,.*\n//ge]])
  vim.cmd([[silent %s/- A\.,.*\n//ge]])
  vim.cmd([[silent %s/- C\.,.*\n//ge]])
  vim.cmd([[silent %s/- L\.,.*\n//ge]])
  vim.cmd([[silent %s/- Ti\.,.*\n//ge]])
  vim.cmd([[silent %s/- Gaius,.*\n//ge]])
end

return text_cleaning