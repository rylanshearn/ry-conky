#!/bin/bash
# ---------------------------------------------------------------------------
# conky_start - starts all conky windows (set to run at startup if wanted)

# Copyright 2016, Rylan Shearn
  
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at <http://www.gnu.org/licenses/> for
# more details.

# Usage: conky_start

# Revision history:
# 2016.04.02 Created
# ---------------------------------------------------------------------------
# all commands except the last must be appended with an ampersand (&) so that the script will not stop at the first command. 
# The "conky -c random_file" command simply tells conky to use random_file for configuration instead of the default ~/.conkyrc
conky -c ~/.conky/conkyrc_ry &
conky -c ~/.conky/feedsrc_ry
