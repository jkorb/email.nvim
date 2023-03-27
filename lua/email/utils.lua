local M = {}

function M.get_header_field(pattern)
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, true)
  for num, line in ipairs(lines) do
    if vim.startswith(line, pattern) then
      return(num)
    end
  end
end

return M
