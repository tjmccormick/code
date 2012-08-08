REM Uses GIMP scripts to resize all JPGs in the current directory.
REM Copyright (C) 2012  TJ McCormick
REM 
REM This program is free software: you can redistribute it and/or modify
REM it under the terms of the GNU General Public License as published by
REM the Free Software Foundation, either version 3 of the License, or
REM (at your option) any later version.
REM 
REM This program is distributed in the hope that it will be useful,
REM but WITHOUT ANY WARRANTY; without even the implied warranty of
REM MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

start gimp-2.4.exe -d -i -b  "(resize_all \"*.JPG\" 800 600)" -b "(gimp-quit 0)"