#!/usr/bin/python

import os

path = "./"
files = os.listdir(path)

try:
 fo = open(path + "report.html", "a")
 fo.write("<html> \
            <head> \
               <style> \
                  table, td, th { \
                     border-style: solid; \
                     border-width: 1px; \
                     border-color: black; \
                   } \
                </style> \
             </head> \
             <body> \
                <table> \
                   <thead> \
                      <tr> \
                        <th>File Name</th> \
                        <th>File Size</th> \
                     </tr> \
                    </thead> \
                   <tbody>")

 for f in files:
  record = ( f, str( os.path.getsize(path + f) ) )
  fo.write("<tr><td>" + record[0] + "</td><td>" + record[1] + "</td>")
                     
 fo.write("</tbody> \
         </table> \
        </body> \
       </html>")
 
 fo.close();
except OSError as e:
 print e.errno
