#!/bin/bash
echo
echo "GENERATING SHELL SCRIPTS USED IN config.xml FILES..."
echo

for i in $(find . -name config.xml -print)
do
  dir=$(dirname $i | cut -c3-)
  count=`grep -c "<command>" ./$dir/config.xml`
if [ $count -gt 0 ]
then
  echo -e "$i     --> Count=$count"
  for j in `seq 1 $count`
  do
    xmllint --xpath "(//*/builders/hudson.tasks.Shell/command)[$j]" ./$dir/config.xml 2>/dev/null \
    | xmllint --xpath "string(/command)" - > ./$dir/script${j}.sh
  done
fi
done

echo
echo "...DONE"
echo
