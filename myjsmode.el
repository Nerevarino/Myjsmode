(progn

(defun mjs-common-procedure-and-print(textStrings)
  ""
  (let
    (
      offset      
    )
    (setq offset (make-string (current-column) ?\ ))
    (setq textStrings ;добавляем отступ ко всем строкам, кроме первой
      (cons 
        (car textStrings)
        (mapcar
          (lambda (string)
            (concat offset string)
          )
          (cdr textStrings)
        )
      )
    )
    (princ ;выводим результирующий текст
      (mapconcat ;соединяем все строки в текст
        (lambda (string)
          string
        )
        textStrings
        "\n"
      ) 
      (current-buffer)
    )   
  )
)



(defun mjs-if()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "if(){"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
    (right-char 2)
  )
)


(defun mjs-el()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "else{"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 1)
    (right-char (- tab-width 1))
  )
)




(defun mjs-eli()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "else if(){"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
    (right-char 7)
  )
)



(defun mjs-sw()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "switch(){"
        (concat (make-string tab-width ?\ ) "case 1:")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) "break;")
        (make-string tab-width ?\ )
        (concat (make-string tab-width ?\ ) "default:")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) "break;")        
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 8)
    (right-char 6)
  )
)




(defun mjs-cas()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "case 1:"
        (make-string tab-width ?\ )
        "break;"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
  )
)



(defun mjs-wi()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "with(){"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
    (right-char 4)
  )
)



(defun mjs-tr()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "try{"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line)
    (right-char (- tab-width 1))
  )
)



(defun mjs-cat()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "catch(){"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
    (right-char 5)
  )
)




(defun mjs-fi()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "finally{"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line)
    (right-char (- tab-width 1))
  )
)



(defun mjs-fo()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "for( ; ; ){"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
    (right-char 4)
  )
)



(defun mjs-func(name signature)
  ""
  (interactive "sfunction name: \nssignature: ")
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        (concat "function " name "(" signature ")")
        "{"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 1)
    (right-char (- tab-width 1))
  )
)



(defun mjs-while()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "while(){"
        (make-string tab-width ?\ )
        "}"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
    (right-char 5)
  )
)



(defun mjs-dowhile()
  ""
  (interactive)
  
  (let
    (
      textStrings
    )
    (setq textStrings ;предварительный список строк
      (list
        "do{"
        (make-string tab-width ?\ )
        "}while();"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (left-char 2)
  )
)




)




