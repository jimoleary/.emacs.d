;;; irony-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "irony" "irony.el" (21917 56372 0 0))
;;; Generated autoloads from irony.el

(defvar irony-additional-clang-options nil "\
Additionnal command line options to pass down to libclang.

Please, do NOT use this variable to add header search paths, only
additional warnings or compiler options.

These compiler options will be prepended to the command line, in
order to not override the value coming from a compilation
database.")

(custom-autoload 'irony-additional-clang-options "irony" t)

(autoload 'irony-mode "irony" "\
Minor mode for C, C++ and Objective-C, powered by libclang.

\(fn &optional ARG)" t nil)

(autoload 'irony-version "irony" "\
Return the version number of the file irony.el.

If called interactively display the version in the echo area.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'irony-server-kill "irony" "\
Kill the running irony-server process, if any.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "irony-cdb" "irony-cdb.el" (21917 56371 0 0))
;;; Generated autoloads from irony-cdb.el

(autoload 'irony-cdb-autosetup-compile-options "irony-cdb" "\


\(fn)" t nil)

(autoload 'irony-cdb-menu "irony-cdb" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "irony-cdb-clang-complete" "irony-cdb-clang-complete.el"
;;;;;;  (21917 56372 0 0))
;;; Generated autoloads from irony-cdb-clang-complete.el

(autoload 'irony-cdb-clang-complete "irony-cdb-clang-complete" "\


\(fn COMMAND &rest ARGS)" nil nil)

;;;***

;;;### (autoloads nil "irony-cdb-json" "irony-cdb-json.el" (21917
;;;;;;  56372 0 0))
;;; Generated autoloads from irony-cdb-json.el

(autoload 'irony-cdb-json "irony-cdb-json" "\


\(fn COMMAND &rest ARGS)" nil nil)

(autoload 'irony-cdb-json-add-compile-commands-path "irony-cdb-json" "\
Add an out-of-source compilation database.

Files below the PROJECT-ROOT directory will use the JSON
Compilation Database as specified by COMPILE-COMMANDS-PATH.

The JSON Compilation Database are often generated in the build
directory. This functions helps mapping out-of-source build
directories to project directory.

\(fn PROJECT-ROOT COMPILE-COMMANDS-PATH)" t nil)

;;;***

;;;### (autoloads nil "irony-cdb-libclang" "irony-cdb-libclang.el"
;;;;;;  (21917 56372 0 0))
;;; Generated autoloads from irony-cdb-libclang.el

(autoload 'irony-cdb-libclang "irony-cdb-libclang" "\


\(fn COMMAND &rest ARGS)" nil nil)

;;;***

;;;### (autoloads nil "irony-completion" "irony-completion.el" (21917
;;;;;;  56371 0 0))
;;; Generated autoloads from irony-completion.el

(autoload 'irony-completion-at-point "irony-completion" "\


\(fn)" nil nil)

(autoload 'irony-completion-at-point-async "irony-completion" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("irony-diagnostics.el" "irony-pkg.el"
;;;;;;  "irony-snippet.el") (21917 56372 556523 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; irony-autoloads.el ends here
