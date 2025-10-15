# Hades - Escape Confirmation Hell

Author: Raoul Comninos

An Emacs package that disables annoying confirmation prompts throughout Emacs, allowing you to work without constant interruptions.

## What It Does

Hades eliminates confirmation dialogs for:

- **Killing Emacs**: Exit immediately without "Active processes exist" warnings
- **File Operations**: Follow symlinks, create new buffers, and revert files without prompts
- **Dired Operations**: Delete files recursively, run shell commands, and perform batch operations (copy, chmod, symlink, etc.) without confirmations
- **Buffer Management**: Kill process buffers and deleted file buffers silently

## Installation

### Manual Installation

1. Download `hades.el` and place it in your Emacs load-path
2. Add to your init file:

```elisp
(require 'hades)
```

### Using `use-package`

```elisp
(use-package hades
  :load-path "path/to/hades")
```

## Configuration

No configuration needed - just load the package and all confirmations are disabled automatically.

If you want to restore the default "kill Emacs" keybinding (which Hades comments out), add this to your init file:

```elisp
(global-set-key (kbd "C-x C-c") 'kill-emacs)
```

## Requirements

- Emacs 29.1 or later (uses `setopt` for setting user options)
- For older Emacs versions, replace `setopt` with `setq` in the source

## Why "Hades"?

The name represents escaping from "Confirmation Hell" - the underworld of constant yes/no prompts that interrupt your workflow.

## Support

If you find this project helpful, consider supporting it!

[Donate via PayPal](https://www.paypal.com/paypalme/revrari)

## License

Free to use and modify.
