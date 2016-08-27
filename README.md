# pomodoro_blocklet
an i3blocklet for pomodoro

## Install
Add
```ini
-----------8<-----------8<-----------8<-----------
[pomodoro]
command=.config/i3/i3blocklets/pomodoro
interval=60
----------->8----------->8----------->8-----------
```
to `$HOME/.config/i3/i3blocks.conf`

`cp ./pomodoro ~/.config/i3/i3blocklets`

reload i3

and you should be good to go (assuming you\`re already using [i3blocks](https://github.com/vivien/i3blocks)).

## Usage
Once the blocklet appears in your bar ist says: "NOTHING / 0 of 0". You could
see it as a bug that it also counts the "nothingness", I find it rather
entertaining.
Click with your right button on it to start your first sprint (the usual rules
apply 25/5/25/5/25/5/25/15 minutes).
It changes to the default colour.
At the end of the sprint it changes back to the warning state and you can
progress to the break and so forth.

The middle mouse button resets it to its NOTHING state

