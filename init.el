(setq inhibit-startup-message t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e4cbf084ecc5b7d80046591607f321dd655ec1bbb2dbfbb59c913623bf89aa98" "12394b50f2dfe62d87eba0773765f287d1117e73402b595ccb13f0d6b779ecdd" "a95d66071817d19102f6a5579c23fa90dcddcecb06d9a1f1f94dbc20cf596df7" "871dcace9f5933d13cd2b0ccc806d561cc9615b43fffad9d06ea3327e81757c9" default)))
 '(eclim-eclipse-dirs (quote ("~/java-photon/eclipse")))
 '(eclim-executable "~/java-photon/eclipse/eclimd")
 '(elim-eclipse-dirs (quote ("~/eclipse/java-latest-released/eclipse")))
 '(jdee-server-dir "~/.emacs.d/jdee-server/target")
 '(lsp-project-whitelist (quote ("^/home/blutics/koem_acc/$")))
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (java-snippets java-yasnippets f dap-mode lsp-python company-slime gradle-mode mvn ant company-lsp lsp-mode realgud google-c-style autodisass-java-bytecode meghanada w3 dashboard highlight-symbol eshell-git-prompt helm-pydoc helm-proc ac-helm hlinum helm-gtags memoize dash company-emacs-eclim highlight highlight-defined highlight-numbers highlight-operators highlight-parentheses highlight-quoted cider yasnippet-snippets undo-tree ibuffer-projectile ibuffer-sidebar multiple-cursors dired-sidebar dired-subtree helm-swoop helm-projectile helm projectile move-text hydra elpy neotree auto-complete counsel ace-window which-key try paredit beacon hungry-delete expand-region flx-ido zerodark-theme use-package moe-theme color-theme-modern challenger-deep-theme base16-theme alect-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(highlight-symbol-face ((t (:background "tomato")))))
