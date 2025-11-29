# Goodbye to Emacs Confirmation Hell

## What It Does

Eliminates confirmation dialogs for:

- **Killing Emacs**: Exit immediately without "Active processes exist" warnings
- **File Operations**: Follow symlinks, create new buffers, and revert files without prompts
- **Dired Operations**: Delete files recursively, run shell commands, and perform batch operations (copy, chmod, symlink, etc.) without confirmations
- **Buffer Management**: Kill process buffers and deleted file buffers silently

## Warning

Accidentally pressing `C-x C-c` will immediately quit Emacs without any warning - even if you have unsaved files or running processes.

