function npeco
  export TERM=xterm

  if test (count $argv) = 0
    set peco_flags --layout=bottom-up
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  peco $peco_flags

  export TERM=xterm-256color
end
