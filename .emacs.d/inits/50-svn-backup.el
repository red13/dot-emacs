;; 
;; don't backup svn-commit
;; 
(defun starts-with-p (string1 string2)
(string= (substring string1 0 (min (length string1) (length
string2))) string2))

(defun dont-backup-commit-files-p (filename)
(let ((filename-part (file-name-nondirectory filename)))
  (if (or (starts-with-p filename-part "svn-commit")
          (starts-with-p filename-part "svn-prop"))
      nil
    (normal-backup-enable-predicate filename))))

(setq backup-enable-predicate 'dont-backup-commit-files-p)

