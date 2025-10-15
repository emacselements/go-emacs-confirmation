;; -*- lexical-binding: t; -*-
;; Author: Raoul Comninos
;; Goodbye to Emacs Confirmation Hell
;; (global-set-key (kbd "C-x C-c") 'kill-emacs)

(setq dired-deletion-confirmer '(lambda (x) t))
(setopt use-short-answers t)
(setopt confirm-kill-emacs nil)
(setopt confirm-kill-processes nil)
(setopt confirm-nonexistent-file-or-buffer nil)
(setopt dired-clean-confirm-killing-deleted-buffers nil)
(setopt dired-confirm-shell-command nil)
(setopt dired-no-confirm '(byte-compile chgrp chmod chown copy hardlink symlink touch))
(setopt dired-recursive-deletes 'always)
(setopt revert-buffer-quick-short-answers t)
(setopt use-short-answers t)
(setq vc-follow-symlinks t)

(provide 'hades)
