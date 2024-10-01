require "nvchad.options"

local o = vim.o

-- SETTINGS
vim.opt.wrap = false

o.cursorlineopt ='both' -- to enable cursorline!

o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

vim.keymap.set('n', '<leader>k', function()
  local diagnostics = vim.diagnostic.get(0)
  if #diagnostics > 0 then
    -- Prepare the diagnostic message
    local msg = ""
    for _, d in ipairs(diagnostics) do
      msg = msg .. d.source .. ": " .. d.message .. "\n"
    end

    -- Create a floating window
    local buf = vim.api.nvim_create_buf(false, true) -- Create a new empty buffer
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(msg, "\n")) -- Set the buffer lines

    -- Calculate the width and height of the popup
    local width = 50
    local height = math.min(10, #vim.split(msg, "\n"))

    -- Get the current window's dimensions
    local win_width = vim.api.nvim_win_get_width(0)
    local win_height = vim.api.nvim_win_get_height(0)

    -- Open the floating window
    local win_id = vim.api.nvim_open_win(buf, true, {
      relative = 'win',
      width = width,
      height = height,
      row = math.floor((win_height - height) / 2), -- Center the popup vertically
      col = math.floor((win_width - width) / 2),   -- Center the popup horizontally
      style = 'minimal',
      border = 'rounded',
    })

    -- Close the popup when any key is pressed
    vim.api.nvim_create_autocmd("BufLeave", {
      buffer = buf,
      once = true, -- The autocmd should fire only once
      callback = function()
        vim.api.nvim_win_close(win_id, true) -- Close the popup window
      end
    })
  else
    vim.lsp.buf.hover() -- Fall back to default hover if no diagnostics
  end
end, { noremap = true, silent = true })


