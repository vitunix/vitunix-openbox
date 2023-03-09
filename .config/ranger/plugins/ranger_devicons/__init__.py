####################################################################################
#     >>  Maintained by team Vitunix (https://github.com/vitunix)  <<              #
#             >> A Simple and unique Arch based distro <<                          #
#             -----> Mail us at (vitunix@proton.me) <-----                         #
#     ----> configured by heapbytes (https://github.com/heapbytes) <-----          #
####################################################################################
import ranger.api
from ranger.core.linemode import LinemodeBase
from .devicons import *

@ranger.api.register_linemode
class DevIconsLinemode(LinemodeBase):
  name = "devicons"

  uses_metadata = False

  def filetitle(self, file, metadata):
    return devicon(file) + ' ' + file.relative_path

@ranger.api.register_linemode
class DevIconsLinemodeFile(LinemodeBase):
  name = "filename"

  def filetitle(self, file, metadata):
    return devicon(file) + ' ' + file.relative_path
