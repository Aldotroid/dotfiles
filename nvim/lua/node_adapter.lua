local dap = require('dap')
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  -- Requires:
  -- git clone https://github.com/microsoft/vscode-node-debug2.git ~/software/microsoft/vscode-node-debug2
  -- cd ~/software/microsoft/vscode-node-debug2
  -- NODE_OPTIONS=--no-experimental-fetch npm run build
  args = {os.getenv('HOME') .. '/software/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}
