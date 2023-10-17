return {
  (vim.fn.executable "python" == 1 or vim.fn.executable "python3" == 1) and { import = "astrocommunity.pack.python" }
    or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.docker" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.json" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.yaml" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.toml" } or {},
  vim.fn.executable "protoc" == 1 and { import = "astrocommunity.pack.proto" } or {},
  vim.fn.executable "rustc" == 1 and { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.lua" },
}
