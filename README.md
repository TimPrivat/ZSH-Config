# ZSH-Config
My customized .zshrc settigns 

Provides a framework for structured Shell configuration.

### Installation

```bash
mkdir -p ~/.zsh 
git clone https://github.com/TimPrivat/ZSH-Config.git ~/.zsh/ZSH-Config
~/.zsh/ZSH-Config/install.sh
```

**This will install**
- Ghostty-Terminal
- Custom ghostty config
- Zsh
- Oh-my-zsh (including several plugins)
- Custom keyboard-shortcuts 
- fzf
- Fastfech
- and several packages (git, curl, locales,...)

##### Parameters
You can set environment variables as parameters before running the script to customize your installation:

|Value|Description|Default|
|:---:|:---:|:---:|
|locale|Installs a the given locale into the system|en_US.UTF-8|

### Usage

#### Default Settings
This Project brings a couple of opinionated default settings and choices.
They can be found in `default-configs/`. I recommend not to change those files, because they are tracked by git.

#### Custom Settings
If you wish to overwrite any of these configurations this repository provides or add functionality 
you do not wish to track in git, you can add your own customization under `custom-configs/`.
The predefined files, will be loaded when the shell is initialized and override any default configs.