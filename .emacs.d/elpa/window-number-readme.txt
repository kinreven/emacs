Introduction
============

Window number mode allows you to select windows by numbers.  This
edition now works with XEmacs as well as GNU Emacs.  The window
numbers do not show up in the mode-line in XEmacs yet, instead a
-?- is displayed.  Hopefully this can be fixed soon, but really
depends on XEmacs developers.

Installation
============

Drop this file into your load path.  C-h v load-path RET or F1 v
load-path RET will help.  Then place the following lines into your
.emacs or ~/.xemacs/init.el and uncomment them.

----------------------------------------------------------------------------

(autoload 'window-number-mode "window-number"
  "A global minor mode that enables selection of windows according to
numbers with the C-x C-j prefix.  Another mode,
`window-number-meta-mode' enables the use of the M- prefix."
  t)

(autoload 'window-number-meta-mode "window-number"
  "A global minor mode that enables use of the M- prefix to select
windows, use `window-number-mode' to display the window numbers in
the mode-line."
  t)

----------------------------------------------------------------------------

Then you can use M-x window-number-mode RET to turn the mode on, or
place (window-number-mode 1) and (window-number-meta-mode 1) into
your .emacs or ~/.xemacs/init.el.

----------------------------------------------------------------------------

Code starts here.

----------------------------------------------------------------------------
