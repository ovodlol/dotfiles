if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
fish_add_path ~/apps 
export DOTNET_ROOT="/snap/dotnet-sdk/current"

set -g fish_greeting ""
set -gx EDITOR nvim
set -gx VISUAL nvim 
set -x TERM xterm-256color

fish_add_path ~/.local/bin
# alias

alias sayk "fortune | cowsay -f fox"
alias bat "batcat --theme=\"Catppuccin Mocha\""
alias renov "clear && source ~/.config/fish/config.fish"
alias tetris "clear && echo -e \"\n\n\n\n\n\n\n\n\" && vitetris"
alias apS "apt search"
alias apI "sudo apt install"
alias apR "sudo apt remove"
alias apL "apt list --installed"
alias apD "sudo apt satisfy"
alias apP "apt info"
alias apA "sudo apt autoremove"
alias y "yazi"
alias e "eza -TaL=2 --icons=always "


# inicialização

# Mude as cores normais (índices 0-7)
   echo -en "\e]P01e1e2e" # Preto -> Base
   echo -en "\e]P1f38ba8" # Vermelho -> Red
   echo -en "\e]P2a6e3a1" # Verde -> Green
   echo -en "\e]P3f9e2af" # Amarelo -> Yellow
   echo -en "\e]P489b4fa" # Azul -> Blue
   echo -en "\e]P5f5c2e7" # Magenta -> Pink
   echo -en "\e]P689dceb" # Ciano -> Sky
   echo -en "\e]P7cdd6f4" # Branco -> Text

   # Mude as cores brilhantes (índices 8-15)
   echo -en "\e]P811111b"  # Preto Brilhante -> Crust
   echo -en "\e]P9eba0ac"  # Vermelho Brilhante -> Maroon
   echo -en "\e]Paa6e3a1"  # Verde Brilhante -> Teal
   echo -en "\e]Pbab387"   # Amarelo Brilhante -> Peach
   echo -en "\e]Pcb4befe"  # Azul Brilhante -> Lavender
   echo -en "\e]Pcf2cdcd"  # Magenta Brilhante -> Flamingo
   echo -en "\e]Pd74c7ec"  # Ciano Brilhante -> Sapphire
   echo -en "\e]Pea6adc8"  # Branco Brilhante -> Subtext1

   # Limpe a tela para que as cores sejam aplicadas ao fundo e ao texto
   clear

pokemon-colorscripts  -r
starship init fish | source
