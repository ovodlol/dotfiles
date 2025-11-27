function n
    set -l lastd_file "$XDG_CONFIG_HOME/nnn/.lastd"
    # Se XDG_CONFIG_HOME não estiver definido, use o caminho padrão
    if not set -q XDG_CONFIG_HOME
        set lastd_file "$HOME/.config/nnn/.lastd"
    end

    # Inicia o nnn, garantindo que NNN_TMPFILE esteja definido
    # para que o nnn sempre escreva o último diretório ao sair.
    env NNN_TMPFILE="$lastd_file" nnn $argv

    # Verifica se o arquivo do último diretório foi criado
    if test -f "$lastd_file"
        # Executa o comando que está dentro do arquivo.
        # Por exemplo, se o arquivo contém "cd '/home/ovo/apps'",
        # o 'source' vai executar esse comando.
        source "$lastd_file"
        # Remove o arquivo temporário
        rm "$lastd_file"
    # else
    #     echo "nnn: Arquivo do último diretório '$lastd_file' não encontrado." >&2
    end
end
