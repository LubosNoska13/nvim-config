local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

require("plugins.config.lsp.mason")
require("plugins.config.lsp.lsp-config")
