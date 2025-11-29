;; Disable annoying confirmation prompts in Emacs -*- lexical-binding: t; -*-
;; Author: Raoul Comninos
;; Copy this code to dot emacs

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
