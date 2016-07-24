# tmux

Show all key bindings: &lt;P&gt; :list-keys
Show all commands: &lt;P&gt; :list-commands


## Sessions

| Shortcut | Command              | Description |
| -------- | -------------------- | ----------- |
| C-b (    | :switch-client -p    | Move to previous session |
| C-b )    | :switch-client -n    | Move to next session |
| C-b d    | :detach-client       | Detach from current session |


## Windows

| Shortcut | Command              | Description |
| -------- | -------------------- | ----------- |
| C-b c    | :new-window          | Create a new window |
| C-b n    | :next-window         | Move to the next window |
| C-b p    | :previous-window     | Move to the previous window |
| C-b w    | :choose-window       | Display list of all windows |


## Panes

| Shortcut | Command              | Description |
| -------- | -------------------- | ----------- |
| C-b %    | :split-window -h     | Vertical split |
| C-b "    | :split-window -v     | Horizontal split |
| C-b h    | :select-pane -L      | Move to left pane |
| C-b l    | :select-pane -R      | Move to right pane |
| C-b k    | :select-pane -U      | Move to above pane |
| C-b j    | :select-pane -D      | Move to below pane |
| C-b q    | :display-panes       | Display the pane names |
| C-b {    | :switch-pane -U      | Swap upper/lower panes |
| C-b }    | :switch-pane -D      | Swap upper/lower panes |
| C-b o    | :select-pane -t :.+  | Rotate through the panes |
| C-b ;    | :last-pane           | Go to last pane |
| C-b z    | :resize-pane -Z      | Make pane fill whole window |


## General

| Command        | Description       |
| -------------- | ----------------- |
| :list-sessions | List all sessions |

## Command line

| Command               | Description |
| --------------------- | ----------- |
| tmux ls               | List sessions (from outside tmux) |

