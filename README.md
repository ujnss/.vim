# .vim
vim configurations and packages (vim 8.0+).


Ensure your vim version is greater than 8.0.

# Usage

- Init.

```bash
git clone --recursive https://github.com/ujnss/.vim.git ~/.vim
```

For YouCompleteMe, [install it](https://github.com/Valloric/YouCompleteMe#installation).

- Add a package.

```bash
cd ~/.vim
git submodule add https://github.com/vim-airline/vim-airline.git pack/mypack/start/vim-airline
```

and so on.

- Upgrade.

```bash
git submodule update --recursive --remote
```
