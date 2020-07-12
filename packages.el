;;; packages.el --- Org-roam Layer packages File for Spacemacs

(defconst org-roam-packages
  '(
    company-org-roam
    org-roam
    org-roam-bibtex
    org-roam-server
    ))

(defun org-roam/init-org-roam ()
  (use-package org-roam
    :hook
    (after-init . org-roam-mode)
    :custom
    ;; Add variable to this so you put the configuration variable in .spacemacs file
    (org-roam-directory "~/org-roam")
    )
  )

(defun org-roam/init-company-org-roam ()
  (use-package company-org-roam
    :hook
    (after-init . org-roam-mode)
    )
)

  (defun org-roam/init-org-roam-bibtex ()
  (use-package org-roam-bibtex
    :hook
    (after-init . org-roam-mode)
    )
)

  (defun org-roam/init-org-roam-server ()
  (use-package org-roam-server
    :hook
    (after-init . org-roam-mode)
    )
)
