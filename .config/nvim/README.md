- Install NVIM:
    mac: brew install neovim
    ubuntu: brew install neovim ('apt' installs old version)
    win: winget install Neovim.Neovim

- config location:
    mac: ~/.config/nvim
    win: $env:LOCALAPPDATA\nvim

- data location:
    mac: ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    win: $env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim

- Install NodeJs
    wsl: https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl

----

- packer
    - run 'git clone' (check packer.nvim README)
    - git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

- telescope
    - need to install 'ripgrep' for running Live Grep of telescope
        mac: brew install ripgrep
        win: scoop install ripgrep

- lsp
    - install lua-language-server
        mac: brew install lua-language-server
        win: scoop install lua-language-server
    - install typescript-language-server
        - npm install -g typescript-language-server typescript
        - On Windows:
            - add the typescript-language-server to PATH - C:\Users\<UserName>\AppData\Roaming\npm\
    - nvim-lspconfig server configurations - https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        - C#
            - csharp_ls - https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#csharp_ls
            - dotnet tool install --global csharp-ls
        - Java
            - java_language_server - https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#java_language_server
            - nvim-jdtls : https://github.com/mfussenegger/nvim-jdtls
            - install jdtls:
                - mac : brew install jdtls
                - win : scoop install jdtls
        - Python
            - pyright - https://github.com/microsoft/pyright
            - pylsp - https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp
                - install: pip install python-lsp-server
        - CSS
            - tailwindcss - https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tailwindcss
            - npm install -g @tailwindcss/language-server

- treesitter
    - install
        mac: brew install tree-sitter
        win: scoop install tree-sitter
    - run ':TSUpdate' after installation
    - run ':TSInstallInfo' to check installation options
