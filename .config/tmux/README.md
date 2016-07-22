# tmux

## Sessions

| Command               | Description |
| --------------------- | ----------- |
| tmux ls               | List sessions (from outside tmux) |
| `<P>` :list-sessions  | Horizontal split |
| `<P>` (               | Move to next session |
| `<P>` )               | Move to previous session |
| `<P>` d               | Detach from current session |


## Buffers

| Command               | Description |
| --------------------- | ----------- |
| tmux ls               | List sessions (from outside tmux) |


## Panes

| Shortcut | Command          | Description |
| -------- | ---------------- | ----------- |
| `<P>` %  | :split-window -h | Vertical split |
| `<P>` "  | :split-window -v | Horizontal split |
| `<P>` h  | :select-pane -L  | Move to left pane |
| `<P>` l  | :select-pane -R  | Move to right pane |
| `<P>` h  | :select-pane -U  | Move to above pane |
| `<P>` h  | :select-pane -D  | Move to below pane |

