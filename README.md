# dotfiles

Este repositório mantém os dotfiles de configuração do NeoVim. Para reproduzir o workflow basta seguir os passos a baixo:

1) Instalar o NeoVim a partir da documentação do [repositório oficial](https://github.com/neovim/neovim);
2) Criar um *alias* com o código abaixo no arquivo de configuração do terminal (`.zshrc`, `.bashrc`, etc):
```
alias v='nvim'
export EDITOR='nvim'
```
3) Clonar o repositório e copiar todos os arquivos (com exceção do `README.md`) para a pasta pasta `~/.config/nvim` (crie essa pasta, se necessário);
4) Instale o vim-plug a partir da documentação do [repositório oficial](https://github.com/junegunn/vim-plug);
5) Abra o arquivo `plugins.vim` e execute o comando `:PlugInstall`.

Ao final desses passos, o NeoVim deve estar devidamente configurado e pronto para ser executado através do comando padrão: `nvim file.ext`; ou através do alias: `v file.ext`.
