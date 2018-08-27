(require 'package)
(setq package-enable-at-startup nil)

;;; add external repositories
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

;;bootstrap use-package
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
		("36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" default)))
 '(package-selected-packages
	 (quote
		(expand-region which-key counsel-projectile ggtags projectile-counsel projectile rainbow-delimiters magit yafolding json-mode company ace-window multiple-cursors use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
