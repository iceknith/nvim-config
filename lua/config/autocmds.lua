-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Setsup ltex config visual effects to be less overwhelming
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("ltex_diagnostics", { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "ltex" then
      local ns = vim.lsp.diagnostic.get_namespace(client.id)
      vim.diagnostic.config({
        virtual_text = false,
        underline = true,
      }, ns)
    end
  end,
})
