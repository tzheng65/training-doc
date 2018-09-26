#!/bin/bash
# array and loops

#!/bin/bash

echo "<html>
<head>
<style>
table, td, th {
 border:1px solid black;
}
</style>
</head>
<body>" > report.html

HOST=$(hostname)
echo "Filesystem usage for host <strong>$HOST</strong><br>
Last updated: <strong>$(date)</strong><br><br>
<table border='1'>
<tr><th >Filesystem</td>
<th >Size</td>
<th >Use %</td>
</tr>" >> report.html

# Read the output of df -h line by line
while read line; do
echo "<tr><td align='center'>" >> report.html
echo $line | awk '{print $1}' >> report.html
echo "</td><td align='center'>" >> report.html
echo $line | awk '{print $2}' >> report.html
echo "</td><td align='center'>" >> report.html
echo $line | awk '{print $5}' >> report.html
echo "</td></tr>" >> report.html
done < <(df -h | grep -vi filesystem)
echo "</table></body></html>" >> report.html