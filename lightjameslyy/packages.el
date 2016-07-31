;;; packages.el --- lightjameslyy layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: lightjames <lightjames@lightjames-MBP.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `lightjameslyy-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `lightjameslyy/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `lightjameslyy/pre-init-PACKAGE' and/or
;;   `lightjameslyy/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst lightjameslyy-packages
  '(
    company
    (occur-mode :location built-in)
    )
  )

  (defun lightjameslyy/post-init-company ()
    (setq
     company-minimum-prefix-length 1
     company-idle-delay 0.05
     )
    )

(defun lightjameslyy/init-occur-mode ()
  (evilified-state-evilify-map occur-mode-map
    :mode occur-mode)
  )


;;; packages.el ends here
