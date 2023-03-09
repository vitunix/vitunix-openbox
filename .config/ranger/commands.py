####################################################################################
#     >>  Maintained by team Vitunix (https://github.com/vitunix)  <<              #
#             >> A Simple and unique Arch based distro <<                          #
#             -----> Mail us at (vitunix@proton.me) <-----                         #
#     ----> configured by heapbytes (https://github.com/heapbytes) <-----          #
####################################################################################
from __future__ import (absolute_import, division, print_function)

from ranger.api.commands import *

import os

class emptytrash(Command):
    """:empty

    Empties the trash 
    """

    def execute(self):
        HOME = os.environ['HOME']
        self.fm.run(f'trash-empty')

