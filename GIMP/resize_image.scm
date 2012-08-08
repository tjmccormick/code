;;; This script resizes an image.
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
(define (resize-image filename-in filename-out new-width new-height)
  (let* ((image      (car (gimp-file-load RUN-NONINTERACTIVE filename-in "")))
         (drawable   (car (gimp-image-active-drawable image)))
         (cur-width  (car (gimp-image-width image)))
         (cur-height (car (gimp-image-height image)))
         (ratio      (min (/ new-width cur-width) (/ new-height cur-height)))
         (width      (* ratio cur-width))
         (height     (* ratio cur-height))
        )

     (gimp-image-scale image width height)
     (gimp-file-save   RUN-NONINTERACTIVE image drawable filename-out "")
  )
)