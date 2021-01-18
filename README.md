# vondark

A dark Vim color scheme based on Google's [Material Design](https://material.io) palette. This theme requires [True Color (24-bit)](https://en.wikipedia.org/wiki/Color_depth#True_color_%2824-bit%29) support, so use either gVim or a [compatible terminal](https://github.com/termstandard/colors) with [`termguicolors`](https://vimhelp.org/options.txt.html#%27termguicolors%27) enabled.

![Screenshot of `:source $VIMRUNTIME/syntax/hitest.vim` using the vondark colorscheme](https://raw.githubusercontent.com/ajvondrak/vondark/images/hitest.png)

Featuring:
* higher contrast and color saturation for a crisper look.
* a simple palette of 14 colors (6 shades of grey, 8 accent colors).
* colors focused around the syntax, greys focused around the UI elements.
* distinct highlighting for different kinds of constants.
* subtle fold highlighting to get text out of your way.
* uncomplicated source that isn't overwrought with configuration flags or code.

## 🔨 Installation

Using Vim 8's native [packages](https://vimhelp.org/repeat.txt.html#packages), you can `git clone` this repository under any `~/.vim/pack/[name]/start` directory. It's recommended you use the [`--single-branch`](https://git-scm.com/docs/git-clone#Documentation/git-clone.txt---no-single-branch) flag to avoid downloading the screenshots from the [images](https://github.com/ajvondrak/vondark/tree/images) branch.

For example,

```console
$ mkdir -p ~/.vim/pack/colors/start
$ cd ~/.vim/pack/colors/start
$ git clone --single-branch https://github.com/ajvondrak/vondark.git
```

External Vim plugin managers ([vim-plug](https://github.com/junegunn/vim-plug), [vundle](https://github.com/VundleVim/Vundle.vim), [dein](https://github.com/Shougo/dein.vim), [minpac](https://github.com/k-takata/minpac), [volt](https://github.com/vim-volt/volt), etc) all tend to work similarly: just point any of them to the ajvondrak/vondark GitHub repository. However, your plugin manager of choice might not support `--single-branch` clones.

In your `~/.vimrc`, add

```viml
set termguicolors
colorscheme vondark
```

Setting `termguicolors` first is only necessary if you use terminal Vim.

## 📖 Documentation

The color scheme is extensively documented in the [wiki](https://github.com/ajvondrak/vondark/wiki). Discussions, screenshots, and more can be found on the following topics:

* 🎨 [**Color Palette**](https://github.com/ajvondrak/vondark/wiki/Color-Palette)
* ♿ [**Accessibility**](https://github.com/ajvondrak/vondark/wiki/Accessibility)
* 💡 [**Design**](https://github.com/ajvondrak/vondark/wiki/Design)
* 🌈 [**Highlighting**](https://github.com/ajvondrak/vondark/wiki/Highlighting)
* 📸 [**Examples**](https://github.com/ajvondrak/vondark/wiki/Examples)
