
export http_proxy="http://cproxy.okinawa-ct.ac.jp:8080"
export https_proxy="$http_proxy"

autoload -U compinit
compinit

# prompt
PROMPT='%n:%c $ '

# ヒストリサイズの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# ビープ音を鳴らさない
setopt nobeep

# 補完候補を一覧で表示
setopt auto_list

# 直前と同じコマンドはヒストリに追加しない
setopt hist_ignore_dups

# タブ連打で補完候補を選択
setopt auto_menu

# =以降も補完
setopt magic_equal_subst

# ターミナル間でヒストリを共有
setopt share_history

# cdの省略
setopt auto_cd

# カッコの対応などを自動補完
setopt auto_param_keys

# ディレクトリ名の補完時に末尾の/を自動付加
setopt auto_param_slash

# 補完時にスペルチェック
setopt correct

# zshの終了ショートカットを廃止
setopt ignore_eof

# alias
setopt complete_aliases
alias ls="ls --color"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias du="du -h"
alias df="df -h"
alias shutdown="shutdown -h now"

# 補完候補を十字キーで選択
zstyle ':completion:*:default' menu select=1

# 大文字小文字の区別をせずに補完
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補に色付け
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"


