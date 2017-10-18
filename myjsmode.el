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




(defun mjs-ca()
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






)




