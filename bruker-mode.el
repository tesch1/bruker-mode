; Copyright (c) 2015, Michael Tesch
; All rights reserved.
; 
; Redistribution and use in source and binary forms, with or without 
; modification, are permitted provided that the following conditions are met:
;
;  - Redistributions of source code must retain the above copyright notice, 
;    this list of conditions and the following disclaimer.
;  - Redistributions in binary form must reproduce the above copyright notice,
;    this list of conditions and the following disclaimer in the 
;    documentation and/or other materials provided with the distribution.
;
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
; POSSIBILITY OF SUCH DAMAGE.
;
; To install Bruker mode into your emacs, put the bruker-mode.el
; file in your load path and add the following to your emacs 
; initialization file:
;
; (require 'bruker-mode)
;
; if you dont have a local load-path, then do something like this
; to modify it (before the require):
;
; (add-to-list 'load-path "~/.emacs.d/")
;

(define-generic-mode 'bruker-mode
  ; comment-list : Comments start with ';'
  '(";")
  ; keyword-list : Keywords
  '("define" "else" "exit" "goto" "grad" "groff" "gron" "if" 
    "lo" "subr" "subroutine" "times" "to"
    )
  ; font-lock-list : Custom Faces
  '(("\\(;.*\\)" 1 'font-lock-comment-face)
    ("^\\s-*\\([a-zA-Z]+\\)," 1 'font-lock-function-name-face)
    ;((regexp-opt '("#include")) 1 'font-lock-preprocessor-face)
    ("\\(#include\\)" 1 'font-lock-preprocessor-face)
    )
  ; auto-mode-list : Filename extension
  '("\\.ppg\\'" "\\.4ch\\'" "\\.plt\\'")
  ; function-list : Other functions to call
  (list (lambda () (setq comment-start ";")))
  ; Description
  "Major mode for very simple Bruker pulse program highlighting." )

            
