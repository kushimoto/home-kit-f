let g:coc_global_extensions = [
  \ "coc-explorer",
  \ "coc-tsserver",
  \ "coc-eslint",
  \ "coc-html",
  \ "coc-css",
  \ ]

let g:coc_react = {
  \ "tsserver.enableJavascript": true,
  \ "eslint.filetypes": ["javascript", "typescript", "typescriptreact", "javascriptreact", "typescript.tsx"],
  \ }

let g:coc_user_config = extend(g:coc_react)
