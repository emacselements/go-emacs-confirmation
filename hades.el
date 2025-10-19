;;; hades.el --- Disable annoying confirmation prompts in Emacs -*- lexical-binding: t; -*-

;; Author: Raoul Comninos
;; Version: 1.0.0
;; Package-Requires: ((emacs "28.1"))
;; Keywords: convenience
;; URL: https://github.com/emacselements/go-emacs-confirmation

;;; Commentary:

;; Hades eliminates confirmation dialogs throughout Emacs, allowing you to
;; work without constant interruptions. It disables confirmations for:
;; - Killing Emacs without "Active processes exist" warnings
;; - File operations (following symlinks, creating buffers, reverting files)
;; - Dired operations (recursive deletion, shell commands, batch operations)
;; - Buffer management (killing process and deleted file buffers)

;; Usage:
;; (require 'hades)

;; To restore the default "kill Emacs" keybinding:
;; (global-set-key (kbd "C-x C-c") 'kill-emacs)

;;; Code:

(setopt confirm-kill-emacs nil)
(setopt confirm-kill-processes nil)
(setopt confirm-nonexistent-file-or-buffer nil)
(setopt dired-clean-confirm-killing-deleted-buffers nil)
(setopt dired-confirm-shell-command nil)
(setopt dired-no-confirm '(byte-compile chgrp chmod chown copy hardlink symlink touch))
(setopt dired-recursive-deletes 'always)
(setopt revert-buffer-quick-short-answers t)
(setopt use-short-answers t)
(setq dired-deletion-confirmer '(lambda (x) t))
(setq vc-follow-symlinks t)

(provide 'hades)

;;; hades.el ends here
