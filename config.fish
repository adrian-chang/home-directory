if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -z (pgrep ssh-agent | string collect)
    eval (ssh-agent -c)
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish
starship init fish | source
