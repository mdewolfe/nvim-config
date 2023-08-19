vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("MDPresave", {}),
    pattern = {"*"},
    callback = function(_)
      local save_cursor = vim.fn.getcurpos(".")
      vim.cmd([[%s/\s\+$//e]])
      vim.fn.setpos(".", save_cursor)
    end
  }
)
