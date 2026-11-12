 # Neovim config
  My [LazyVim](https://www.lazyvim.org/) setup.
  ## Setup on a new machine
  ### Prerequisites
  - [Neovim](https://neovim.io/) (0.11 or newer)
  - `git`
  - A C compiler on `PATH`, for Treesitter parsers. On Windows:
    `winget install --id BrechtSanders.WinLibs.POSIX.UCRT -e`
  - [`delta`](https://github.com/dandavison/delta) for nicer diffs
  - [`lazygit`](https://github.com/jesseduffield/lazygit)
  ### Install
  ```powershell
  git clone https://github.com/jakubcz3/LazyVimConfig $env:LOCALAPPDATA\nvim
  nvim
  ```
  ## Lazygit and delta
  Lazygit config, saved to `%LOCALAPPDATA%\lazygit\config.yml`:
  ```yaml
  git:
    diffRenderers:
      - colorArg: always
        command: delta --dark --paging=never
  ```
  Delta styling, added to `~/.gitconfig`:
  ```ini
  [delta]
      dark = true
      line-numbers = true
      syntax-theme = Visual Studio Dark+
      minus-style = syntax "#3a1d20"
      minus-emph-style = syntax "#7a2e33"
      plus-style = syntax "#15301f"
      plus-emph-style = syntax "#1f6b35"
      line-numbers-minus-style = "#f85149" "#3a1d20"
      line-numbers-plus-style = "#3fb950" "#15301f"
      line-numbers-zero-style = "#6e7681"
      line-numbers-left-format = "{nm:^4} "
      line-numbers-right-format = "{np:^4} "
      file-style = bold
      file-decoration-style = none
      hunk-header-style = line-number syntax
      hunk-header-decoration-style = none
      hunk-header-line-number-style = "#8b949e"
  ```
