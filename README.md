# Dotfiles

My personal dotfiles managed with GNU Stow.

## Setup

### Prerequisites

- GNU Stow

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Stow the configurations:
   ```bash
   stow nvim
   stow kitty
   ```

To unstow:
   ```bash
   stow -D nvim
   stow -D kitty
   ```

## Contents

- **nvim** - Neovim configuration with lazy.nvim
- **kitty** - Kitty terminal emulator configuration
