;;; -*- mode: lisp-interaction; syntax: elisp -*-
;;     Time-stamp: <Oct 26 2009>

;; keyset
(global-set-key "\C-h" 'backward-delete-char) ;C-h as BackSpace
(global-set-key "\M-?" 'help-for-help)        ;M-? as help
(global-set-key "\C-q" 'dabbrev-expand)
;(global-set-key "\C-q" 'quoted-insert)       ;C-q original
;(global-set-key "\C-x\C-b" 'buffer-menu)
;goto
(global-set-key "\M-g" 'goto-line)


(cd "~")                            ;start on home directory
(setq-default indent-tabs-mode nil) ;When pushing [TAB], spaces are input.

;; distinguishing Emacsen
(cond
 ((and (featurep 'meadow) (= emacs-major-version 22))
  (load "~/.meadow3"))
 ((and (equal system-type 'windows-nt) (= emacs-major-version 23))
  (load "~/.ntemacs23"))
 ((and (equal system-type 'windows-nt) (= emacs-major-version 22))
  (load "~/.ntemacs22"))
 ((= emacs-major-version 23)
  (load "~/.emacs23"))
 ((= emacs-major-version 22)
  (load "~/.emacs22"))
 ((= emacs-major-version 21)
  (load "~/.emacs21"))
)
;; end of file
