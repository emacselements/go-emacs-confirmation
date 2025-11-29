# go-emacs-confirmation

Disables confirmation prompts in Emacs for faster workflows.

## Installation

Copy the contents of `go-emacs-confirmation.el` to your Emacs config.

## Features

- Exit Emacs without process/unsaved file warnings
- Auto-follow symlinks
- Skip prompts for new buffers and file reverts
- Dired: recursive deletes, batch operations (copy, chmod, symlink, etc.) without confirmations
- Use `y`/`n` instead of `yes`/`no` for remaining prompts

## Warning

`C-x C-c` will quit immediately without any confirmation.

