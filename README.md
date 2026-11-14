# ZSH-Config
My customized .zshrc settigns 


### Installation

```bash
mkdir -p ~/.zsh 
git clone https://github.com/TimPrivat/ZSH-Config.git ~/.zsh/ZSH-Config
~/.zsh/ZSH-Config/install.sh
```

**This will install**
- Ghostty-Terminal
- Custom ghostty config
- zsh
- oh-my-zsh (including several plugins)
- custom keyboard-shortcuts 
- fzf
- fastftech
- and several packages (git, curl, locales,...)


### Usage

#### Default Settings
This Project brings a couple of opinionated default settings and choices.
They can be found in `default-configs/`. I recommend not to change those files, because they are tracked by git.

#### Custom Settings
If you wish to overwrite any of these configurations this repository provides or add functionality 
you do not wish to track in git, you can add your own customization under `custom-configs/`.
The predefined files, will be loaded when the shell is initialized and override any default configs.