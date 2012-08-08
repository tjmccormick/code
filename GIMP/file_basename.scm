;;; This script appends '_small' to the end of a JPG file.
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
    
(define (file_basename filename)
  (let*
    (
      (broken-up (strbreakup filename "."))
      (name (car broken-up))
      (result (string-append name "_small.JPG"))
    )
    result
  )
)