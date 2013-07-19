README
--------

A set of python scripts for running WRF and associated
programmes, WPS, UPP, NCL etc.

Designed to be quickly hackable. Everyone needs 
a scripting framework for running WRF, but no 
once size fits all.

Everything is controlled by a configuration file
which mimicks the namelist.input format. This state
is held in a dictionary, which is the sole argument
to many python methods.

The outer-level loop is executed in run_forecast.py, 
while mostof the functions are contained in wrftools.py.
If you find it useful, please contribute, it could use some
tidying up.

----------
Author 
Sam Hawkins
samwisehawkins@gmail.com

---------
License
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>i