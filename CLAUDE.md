# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an Emacs Lisp package called `hades` that disables confirmation prompts across Emacs. The package name comes from the concept of "Confirmation Hell" - the frustration of dealing with too many confirmation dialogs in Emacs.

## Architecture

- **Single-file package**: [hades.el](hades.el) contains all configuration
- **Module name**: The package provides the feature `'hades` (note: line 19 uses `provide 'hades`, not `provide 'hades.el`)
- **Lexical binding**: Enabled via the file header on line 1

## Key Configuration Areas

The package disables confirmations in these areas:

1. **Killing Emacs**: `confirm-kill-emacs` and `confirm-kill-processes`
2. **Dired operations**: Multiple settings control file deletion, shell commands, and recursive operations
3. **Buffer management**: `confirm-nonexistent-file-or-buffer`
4. **File operations**: `vc-follow-symlinks` and buffer revert operations

## Emacs Lisp Development

- **Testing**: Load the file in Emacs with `M-x eval-buffer` or `emacs -Q -l hades.el`
- **Installation**: Users typically add `(require 'hades)` to their init file after placing this file in their load-path
- **Byte compilation**: Can be compiled with `emacs -batch -f batch-byte-compile hades.el`

## Important Notes

- This package uses both `setq` and `setopt` - `setopt` is the modern Emacs 29+ way to set user options
- The `dired-deletion-confirmer` uses a lambda that always returns `t` to bypass deletion confirmations
- All parentheses must balance correctly in Emacs Lisp - validate this carefully when making changes
