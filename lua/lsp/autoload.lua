local fn = vim.fn
local servers = {"intelephense"}

-- install linter
local intall_lsp_server = function (lsp_server)
  local hasNpm = fn.executable("npm")
  if hasNpm == 1 then
    print("intall server " .. lsp_server)
    fn.system("npm i -g intelephense")
  else
    print("you must install npm before install lsp servers") 
  end
end

-- check if has linter
for _, server in ipairs(servers) do
  if fn.executable(server) == 0 then
      intall_lsp_server(server)
  end
end

return servers
