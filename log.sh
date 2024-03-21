#! /usr/bin/bash

app=demo; #just a name

#path you stored the site file exmp. /var/www/demo.domain.tld
dir=/www/wwwroot/demo.domain.tld

#path you stored the fetch log file exmp. /var/www/demo.domain.tld/.fetch.html
fetch=/www/wwwroot/demo.domain.tld/demo/.fetch.html

#path you stored the pull log file exmp. /var/www/demo.domain.tld/.pull.html
pull=/www/wwwroot/demo.domain.tld/demo/.pull.html

# git [command], get the output, write it to the log file 
cd $dir && stdbuf -oL sh -c 'git fetch 2>&1' | ts '<br> %d-%m-%Y - %T - wastek -' >> $fetch && stdbuf -oL sh -c 'git pull 2>&1' | ts '<br> %F - %T - wastek -' >> $pull  &&  sed -i '/Temporary failure in name resolution/ s/^/<br>/g;/Connection timed out/ s/^/<br>/g;s/Temporary failure in name resolution/<b style="color:red">tempFail:nameResolution<\/b>/g;s/Connection timed out/<b style="color:red">errConn:timedOut<\/b>/g;/- From/ s/^/<br>/g;s/- From/<b style="color:blue">From<\/b>/g;/and the repository exists/d;/Please make sure you have the correct access rights/d;/fatal: Could not read from remote repository/d;/- $/d;/errConn:timedOut/d;/tempFail:nameResolution/d' $fetch && sed -i '/ - Updating/ s/^/<br>/g;/Temporary failure in name resolution/ s/^/<br>/g;/Connection timed out/ s/^/<br>/g;s/Temporary failure in name resolution/<b style="color:red">tempFail:nameResolution<\/b>/g;s/Connection timed out/<b style="color:red">errConn:timedOut<\/b>/g;s/- wastek - Updating/<b style="color:blue">Updating<\/b>/g;s/insertions(+)/<i style="color:green">insertions[+]<\/i>/g;s/deletions(-)/<i style="color:red">deletions[-]<\/i>/g;/Already up to date/d;/and the repository exists/d;/Please make sure you have the correct access rights/d;/fatal: Could not read from remote repository/d;/- $/d;/errConn:timedOut/d;/tempFail:nameResolution/d' $pull
