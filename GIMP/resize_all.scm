;;; This script resizes all the JPG files in a directory.
;;; It must be placed in the scripts directory under the GIMP installation.
;;; Copyright (C) 2012  TJ McCormick
;;; 
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;; 
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;; 
;;; You should have received a copy of the GNU General Public License
;;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
(define (resize_all file-pattern new-width new-height )

  (let* ( (filelist (cadr (file-glob file-pattern 1))))

    (while (not (null? filelist))
      (let* ( (cur-file  (car filelist)) )
      
        (resize-image 
           cur-file 
           (file_basename cur-file)
           new-width 
           new-height
        )

        (set! filelist (cdr filelist))
      )
    )
  )
)