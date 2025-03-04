local local_path = vim.fn.stdpath("config") .. "/lua/local"

for _, file in ipairs(vim.fn.readdir(local_path, [[v:val =~ '\.lua$']])) do
  if file ~= "init.lua" then
    local module = "local." .. file:gsub("%.lua$", "")
    local ok, _ = pcall(require, module)
    if not ok then
      vim.notify("Failed to load " .. module, vim.log.levels.WARN)
    end
  end
end
