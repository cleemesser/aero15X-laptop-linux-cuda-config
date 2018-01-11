# Problem: As long as I do not turn off the nvidia GPU,things seem ok
- but if bbswitch is installed (from default distribution repo) then I get lots of lockups
- even running lspci can cause lockups, often on the second run

### First attempt at solution. Suspecting acpi issue.

use info from https://github.com/Bumblebee-Project/Bumblebee/issues/764#issuecomment-234494238
and https://bugzilla.kernel.org/show_bug.cgi?id=156341

Trying::
  Gigabyte P35V5 (i7-6700HQ/GTX 970M). Workaround: acpi_osi=! acpi_osi="Windows 2009"
  
  on the mode line
  
  
### Results:
- so far an improvement
- can now modprobe bbswitch
- do multiple lspci's without lockup
- launch X and run with intel + bumblebee setup seems able to run mesa opengl
- turn off nvidia and on using echo "ON" > /proc/acpi/bbswitch
- currnent draw measured under battern by tlp (risky I know) seems to drop in half
  from 1400-1500 mA/hr to ~700 mA/hr



