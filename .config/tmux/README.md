# tmux


## Sessions

| Shortcut | Command                                    | Description |
| -------- | ------------------------------------------ | ----------- |
| C-b (    | :switch-client -p                          | Move to previous session |
| C-b )    | :switch-client -n                          | Move to next session |
| C-b d    | :detach-client                             | Detach from current session |


## Windows

| Shortcut | Command                                    | Description |
| -------- | ------------------------------------------ | ----------- |
| C-b c    | :new-window                                | Create a new window |
| C-b ,    | :command-prompt -I #W "rename window '%%'" | Rename the current window |
| C-b n    | :next-window                               | Move to the next window |
| C-b p    | :previous-window                           | Move to the previous window |
| C-b w    | :choose-window                             | Display list of all windows |
| C-b %    | :split-window -h                           | Vertical split |
| C-b "    | :split-window -v                           | Horizontal split 
| C-b n    | :select-window -t :=n                      | Select the window at index n, where n is between 1-9 |


## Panes

| Shortcut | Command                                    | Description |
| -------- | ------------------------------------------ | ----------- |
| C-b h    | :select-pane -L                            | Move to left pane |
| C-b l    | :select-pane -R                            | Move to right pane |
| C-b k    | :select-pane -U                            | Move to above pane |
| C-b j    | :select-pane -D                            | Move to below pane |
| C-b q    | :display-panes                             | Display the pane names |
| C-b {    | :switch-pane -U                            | Swap upper/lower panes |
| C-b }    | :switch-pane -D                            | Swap upper/lower panes |
| C-b o    | :select-pane -t :.+                        | Rotate through the panes |
| C-b ;    | :last-pane                                 | Go to last pane |
| C-b z    | :resize-pane -Z                            | Make pane fill whole window |
| C-b C-h  | :resize-pane -L 5                          | Resize the pane 5 cells left |
| C-b C-l  | :resize-pane -R 5                          | Resize the pane 5 cells right |
| C-b C-k  | :resize-pane -U 5                          | Resize the pane 5 cells up |
| C-b C-j  | :resize-pane -D 5                          | Resize the pane 5 cells |


## Copy mode

When selecting text with the mouse, hold Shift at the same time.

C-b PgUp enters copy mode automatically.

Exit copy mode by pressing q.


## General

| Shortcut | Command                                    | Description |
| -------- | ------------------------------------------ | ----------- |
| C-b ?    | :list-keys                                 | List all key bindings |
|          | :list-commands                             | List all commands |
|          | :list-sessions                             | List all sessions |


## Command line

| Command               | Description |
| --------------------- | ----------- |
| tmux ls               | List sessions (from outside tmux) |

