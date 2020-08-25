;;; funcs.el --- Org-roam Layer functions File for Spacemacs

(defun org-roam/init-org-roam ()
  (progn

    (spacemacs/declare-prefix "ar" "org-roam")
    (spacemacs/set-leader-keys
      "arr" 'org-roam-find-file
      "arb" 'org-roam-switch-to-buffer
      "arc" 'org-roam-capture
      "ard" 'org-roam-date
      "art" 'org-roam-dailies-today
      "arT" 'org-roam-dailies-tomorrow
      "ary" 'org-roam-dailies-yesterday)

    (spacemacs/declare-prefix-for-mode 'org-mode "mr" "org-roam")
    (spacemacs/set-leader-keys-for-major-mode 'org-mode
      "F" 'org-roam-find-file
      "b" 'org-roam-switch-to-buffer
      "g" 'org-roam-graph
      "ir" 'org-roam-insert
      "r" 'org-roam
      "u" 'org-roam-unlinked-references)))
