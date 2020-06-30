;;; funcs.el --- Org-roam Layer functions File for Spacemacs

(defun org-roam/init-org-roam ()
  (progn

    (spacemacs/declare-prefix "ar" "org-roam")
    (spacemacs/set-leader-keys
      "arr" 'org-roam-find-file
      "arb" 'org-roam-switch-to-buffer
      "arc" 'org-roam-capture
      "art" 'org-roam-today
      "arT" 'org-roam-tomorrow
      "ary" 'org-roam-yesterday)

    (spacemacs/declare-prefix-for-mode 'org-mode "mr" "org-roam")
    (spacemacs/set-leader-keys-for-major-mode 'org-mode
      "F" 'org-roam-find-file
      "b" 'org-roam-switch-to-buffer
      "g" 'org-roam-graph
      "ir" 'org-roam-insert
      "r" 'org-roam)))
