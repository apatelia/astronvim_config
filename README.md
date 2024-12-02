# AstroNvim Config

**NOTE:** This is for AstroNvim v4+

## 🛠️ Installation

If you want to install `astronvim` as the only nvim installation, then refer to [Installation](https://docs.astronvim.com/#-installation).

Make sure you change the clone url to the url of this repo, in step 3, as shown below.

```shell
git clone --depth 1 https://github.com/apatelia/astronvim_config.git ~/.config/nvim
```

Also, you do not need to follow the steps below. Follow the steps from installation guide linked above.

Steps below assumes that you want to use `astronvim` as an additional `nvim` distro.

#### Install as an alternative installation, so we can keep our original 'nvim' config intact.

```shell
# With https
git clone https://github.com/apatelia/astronvim_config.git ~/.config/astronvim
```

#### Start nvim with NVIM_APPNAME environment variable set to 'astronvim'

```shell
NVIM_APPNAME=astronvim nvim
```

#### Alternatively, you can set an alias for above command in your '.bashrc', '.zshrc' etc.

```shell
alias astronvim="NVIM_APPNAME=astronvim nvim"

# or a shorter one ;)
alias av="NVIM_APPNAME=astronvim nvim"
```
