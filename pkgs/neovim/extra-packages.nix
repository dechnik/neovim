{ pkgs, ... }:

with pkgs; [
  # Grammar
  tree-sitter

  # Language Servers
  sqls
  gopls
  rnix-lsp
  rust-analyzer
  sumneko-lua-language-server

  # Language Server Dependencies
  nodePackages.pyright

  # Formatters
  nixfmt
  rustfmt
  nodePackages.prettier

  # Utility
  ripgrep

  # Documentation
  manix

  # Lua
  lua5_1

  # Node
  nodejs-16_x
]
