return {
  cmd = {
    'arduino-language-server',
    '-clangd',
    'clangd',
    '-cli',
    'arduino-cli',
    '-cli-config',
    vim.fn.expand '~/.arduino15/arduino-cli.yaml',
    '-fqbn',
    'arduino:avr:uno',
  },
  filetypes = { 'arduino' },
  root_markers = { 'sketch.yaml', '*.ino' },
  capabilities = {
    textDocument = {
      semanticTokens = vim.NIL,
      completion = {
        completionItem = {
          insertReplaceSupport = false,
        },
      },
    },
    workspace = { semanticTokens = vim.NIL },
  },
}
