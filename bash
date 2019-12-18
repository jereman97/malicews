Apple_PubSub_Socket_Render=/private/tmp/com.apple.launchd.bNd2Eyaw5D/Render
BASH=/bin/bash
BASH_ARGC=()
BASH_ARGV=()
BASH_LINENO=()
BASH_REMATCH=([0]="n")
BASH_SOURCE=()
BASH_VERSINFO=([0]="3" [1]="2" [2]="57" [3]="1" [4]="release" [5]="x86_64-apple-darwin18")
BASH_VERSION='3.2.57(1)-release'
COLUMNS=80
DIRSTACK=()
EUID=501
GROUPS=()
HISTFILE=/Users/melaniemichaelbenson/.bash_sessions/6473C7C5-17E7-4FC2-A849-87C7473FEB28.historynew
HISTFILESIZE=500
HISTSIZE=500
HOME=/Users/melaniemichaelbenson
HOSTNAME=Melanies-iMac.frontierlocal.net
HOSTTYPE=x86_64
IFS=$' \t\n'
LANG=en_US.UTF-8
LINES=24
LOGNAME=melaniemichaelbenson
MACHTYPE=x86_64-apple-darwin18
MAILCHECK=60
OPTERR=1
OPTIND=1
OSTYPE=darwin18
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
PIPESTATUS=([0]="127")
PPID=1149
PROMPT_COMMAND=update_terminal_cwd
PS1='\h:\W \u\$ '
PS2='> '
PS4='+ '
PWD=/Users/melaniemichaelbenson
SHELL=/bin/bash
SHELLOPTS=braceexpand:emacs:hashall:histexpand:history:interactive-comments:monitor
SHELL_SESSION_DID_HISTORY_CHECK=1
SHELL_SESSION_DID_INIT=1
SHELL_SESSION_DIR=/Users/melaniemichaelbenson/.bash_sessions
SHELL_SESSION_FILE=/Users/melaniemichaelbenson/.bash_sessions/6473C7C5-17E7-4FC2-A849-87C7473FEB28.session
SHELL_SESSION_HISTFILE=/Users/melaniemichaelbenson/.bash_sessions/6473C7C5-17E7-4FC2-A849-87C7473FEB28.history
SHELL_SESSION_HISTFILE_NEW=/Users/melaniemichaelbenson/.bash_sessions/6473C7C5-17E7-4FC2-A849-87C7473FEB28.historynew
SHELL_SESSION_HISTFILE_SHARED=/Users/melaniemichaelbenson/.bash_history
SHELL_SESSION_HISTORY=1
SHELL_SESSION_TIMESTAMP_FILE=/Users/melaniemichaelbenson/.bash_sessions/_expiration_check_timestamp
SHLVL=1
SSH_AUTH_SOCK=/private/tmp/com.apple.launchd.BCYE0OnVnh/Listeners
TERM=xterm-256color
TERM_PROGRAM=Apple_Terminal
TERM_PROGRAM_VERSION=421.2
TERM_SESSION_ID=6473C7C5-17E7-4FC2-A849-87C7473FEB28
TMPDIR=/var/folders/dp/qk36c48s4dqdz8bhjw3k0rqc0000gn/T/
UID=501
USER=melaniemichaelbenson
XPC_FLAGS=0x0
XPC_SERVICE_NAME=0
_=uneven
shell_session_delete_expired () 
{ 
    if ( [ ! -e "$SHELL_SESSION_TIMESTAMP_FILE" ] || [ -z "$(/usr/bin/find "$SHELL_SESSION_TIMESTAMP_FILE" -mtime -1d)" ] ); then
        local expiration_lock_file="$SHELL_SESSION_DIR/_expiration_lockfile";
        if /usr/bin/shlock -f "$expiration_lock_file" -p $$; then
            echo -n 'Deleting expired sessions...';
            local delete_count=$(/usr/bin/find "$SHELL_SESSION_DIR" -type f -mtime +2w -print -delete | /usr/bin/wc -l);
            [ "$delete_count" -gt 0 ] && echo $delete_count' completed.' || echo 'none found.';
            ( umask 077;
            /usr/bin/touch "$SHELL_SESSION_TIMESTAMP_FILE" );
            /bin/rm "$expiration_lock_file";
        fi;
    fi
}
shell_session_history_allowed () 
{ 
    if [ -n "$HISTFILE" ]; then
        local allowed=0;
        if shopt -q histappend || [ -n "$HISTTIMEFORMAT" ]; then
            allowed=${SHELL_SESSION_HISTORY:-0};
        else
            allowed=${SHELL_SESSION_HISTORY:=1};
        fi;
        if [ $allowed -eq 1 ]; then
            return 0;
        fi;
    fi;
    return 1
}
shell_session_history_check () 
{ 
    if [ ${SHELL_SESSION_DID_HISTORY_CHECK:-0} -eq 0 ]; then
        SHELL_SESSION_DID_HISTORY_CHECK=1;
        if shell_session_history_allowed; then
            shell_session_history_enable;
        fi;
        if [ "$PROMPT_COMMAND" = "shell_session_history_check" ]; then
            unset PROMPT_COMMAND;
        else
            if [[ $PROMPT_COMMAND =~ (.*)(; *shell_session_history_check *| *shell_session_history_check *; *)(.*) ]]; then
                PROMPT_COMMAND="${BASH_REMATCH[1]}${BASH_REMATCH[3]}";
            fi;
        fi;
    fi
}
shell_session_history_enable () 
{ 
    ( umask 077;
    /usr/bin/touch "$SHELL_SESSION_HISTFILE_NEW" );
    HISTFILE="$SHELL_SESSION_HISTFILE_NEW";
    SHELL_SESSION_HISTORY=1
}
shell_session_save () 
{ 
    if [ -n "$SHELL_SESSION_FILE" ]; then
        echo -n 'Saving session...';
        ( umask 077;
        echo 'echo Restored session: "$(/bin/date -r '$(/bin/date +%s)')"' >|"$SHELL_SESSION_FILE" );
        declare -F shell_session_save_user_state > /dev/null && shell_session_save_user_state;
        shell_session_history_allowed && shell_session_save_history;
        echo 'completed.';
    fi
}
shell_session_save_history () 
{ 
    shell_session_history_enable;
    history -a;
    if [ -f "$SHELL_SESSION_HISTFILE_SHARED" ] && [ ! -s "$SHELL_SESSION_HISTFILE" ]; then
        echo -ne '\n...copying shared history...';
        ( umask 077;
        /bin/cp "$SHELL_SESSION_HISTFILE_SHARED" "$SHELL_SESSION_HISTFILE" );
    fi;
    echo -ne '\n...saving history...';
    ( umask 077;
    /bin/cat "$SHELL_SESSION_HISTFILE_NEW" >> "$SHELL_SESSION_HISTFILE_SHARED" );
    ( umask 077;
    /bin/cat "$SHELL_SESSION_HISTFILE_NEW" >> "$SHELL_SESSION_HISTFILE" );
    : >|"$SHELL_SESSION_HISTFILE_NEW";
    if [ -n "$HISTFILESIZE" ]; then
        echo -n 'truncating history files...';
        HISTFILE="$SHELL_SESSION_HISTFILE_SHARED";
        HISTFILESIZE="$HISTFILESIZE";
        HISTFILE="$SHELL_SESSION_HISTFILE";
        HISTFILESIZE="$size";
        HISTFILE="$SHELL_SESSION_HISTFILE_NEW";
    fi;
    echo -ne '\n...'
}
shell_session_update () 
{ 
    shell_session_save && shell_session_delete_expired
}
update_terminal_cwd () 
{ 
    local url_path='';
    { 
        local i ch hexch LC_CTYPE=C LC_ALL=;
        for ((i = 0; i < ${#PWD}; ++i))
        do
            ch="${PWD:i:1}";
            if [[ "$ch" =~ [/._~A-Za-z0-9-] ]]; then
                url_path+="$ch";
            else
                printf -v hexch "%02X" "'$ch";
                url_path+="%${hexch: -2:2}";
            fi;
        done
    };
    printf '\e]7;%s\a' "file://$HOSTNAME$url_path"
}
