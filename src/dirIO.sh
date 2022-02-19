#!/bin/sh

if [ $# -lt 3 ]; then
#clear
echo ""
echo "syntax: dirIO <subfolders> <logfile size> <directory>"
echo "   subfolders: 0=infinite, 1-?: depth of tree"
echo "   logfile size: limited [MB] size of logging details"
echo "   directory: monitored file i/o"
echo ""
echo "limitations:                                          " 
echo "             equally named file/directory accesses,   " 
echo "   resulting into equal copy or modify sizes, within  "
echo "   one diff command cycle, are                        "
echo "   not calculated into i/o summaries                  "
echo "             slow 'du' command output with huge file  "
echo "             numbers                                  "
echo ""
sleep 5
exit 0
fi

this=$$
echo $this
thisname=`ps -p $this -o command= | cut --delimiter=' ' -f2`

treesubs=$1
loglim=$2
thisdir=$3
