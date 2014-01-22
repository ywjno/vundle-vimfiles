**This Vim configurations base form [kaochenlong/eddie-vim](https://github.com/kaochenlong/eddie-vim)**

My personal Vim configurations and some plugins which I used in my daily job.

I put Vim related settings in `plugin/settings/Settings.vim`, and isolate other plugins' settings in `plugin/settings` directory.

you can link your `~/.vimrc` to any one of them as you wish :)

## Usage

### Installation and Requisites:
( **Windows users** see [Vundle for Windows](https://github.com/gmarik/vundle/wiki/Vundle-for-Windows) PLZ)

1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)

2. `cd ~` to change directory to your home directory if your like.

3. copy files to your home directory:

        git clone git://github.com/ywjno/vundle-vimfiles.git ～/vundle-vimfiles

4. make a symbolic link `.vim` to `vundle-vimfiles` that you just cloned, or just rename it to `.vim` also be fine:

        ln -s vundle-vimfiles ~/.vim

5. link the vimrc to

        ln -s ~/.vim/vimrc ~/.vimrc

6. if you use GUI version VIM, such as MacVim or GVim, you can also link to `.gvimrc`:

        ln -s ~/.vim/gvimrc ~/.gvimrc

7. Setup [Vundle](https://github.com/gmarik/vundle)

        git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

8. if you use Powerline under Ubuntu or something which can not show the correct icons/fonts on the bottom, you can check [this link](https://github.com/scotu/ubuntu-mono-powerline), it looks pretty nice.

9. you may need to install `ack` or `silver searcher` first if you use `ack.vim`.

### Install bundles:

Launch `vim`, run `:BundleInstall`  (or `vim +BundleInstall +qall` for CLI lovers)

### Update bundles:

Launch `vim`, run `:BundleInstall!`

### Features and Key Mappings:

1. Resize splited windows automatically, so that you  get a bigger editing room if you're working with a smaller screen. (stole from [Gary Bernhardt](https://github.com/garybernhardt))

2. Toggle between working mode and presentation mode by `<leader>z`, but only work in GUI version Vim. You can check [here](http://blog.eddie.com.tw/2012/03/14/switch-to-presentation-mode/) to see how it looks like. (stole from [Mike Skalnik](https://github.com/skalnik))

3. some usually used key mappings in normal mode:

    a. `<F2>` to toggle NERDTree on and off.

    b. `<F4>` to toggle Tagbar window.

    c. `<F7>` to switch to previous tab, and `<F8>` to the next tab.

    d. hit `<ctrl>p` will launch a quick window to match keywords from your current working directory, not only file name, but also path name. And `<ctrl>w u` will match from your MRU(Mostly Recent Used) files, which is also frequently used.

    e. hit `<leader>` twice to toggle comment on and off.

    f. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.

4. Remove tailing whitespace automatically while saving.

## FAQ

if you can not found `ctags` command, just find your ctags path and replace my settings in `plugin/settings/Ctags.vim` file:

    let g:tagbar_ctags_bin = '/your/path/to/ctags'

and [Exuberant Ctags](http://ctags.sourceforge.net/) is recommended.
