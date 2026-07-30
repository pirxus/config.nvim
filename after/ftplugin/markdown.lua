vim.keymap.set("n", ",t", function()
    local line = vim.api.nvim_get_current_line()
    local modified_string

    if string.find(line, "^%s*%- %[ %]", 1, false) then
      modified_string, _ = string.gsub(line, "%- %[ %]", "- [x]", 1)

    elseif string.find(line, "^%s*%- %[[xX]%]", 1, false) then
      modified_string, _ = string.gsub(line, "%- %[[xX]%]", "- [ ]", 1)
    end

    if modified_string then
        vim.api.nvim_set_current_line(modified_string)
    end
  end,
  { buffer = true }
)

