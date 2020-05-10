(defconst org-roam-packages
  '(org-roam))

(defun org-roam/init-org-roam ()
  (use-package org-roam
    :hook
    (after-init . org-roam-mode)
    :custom
    ;; Add variable to this so you put the configuration variable in .spacemacs file
    (org-roam-directory "~/brain")
    :init
    (progn
      (spacemacs/declare-prefix "ar" "org-roam")
      (spacemacs/set-leader-keys
       "arr" 'org-roam-find-file
       "arb" 'org-roam-switch-to-buffer
       "arc" 'org-roam-capture
       "art" 'org-roam-today
       "ary" 'org-roam-yesterday)

      (spacemacs/declare-prefix-for-mode 'org-mode "mr" "org-roam")
      (spacemacs/set-leader-keys-for-major-mode 'org-mode
        "f" 'org-roam-find-file
        "b" 'org-roam-switch-to-buffer
        "g" 'org-roam-graph
        "ir" 'org-roam-insert
        "r" 'org-roam))))
