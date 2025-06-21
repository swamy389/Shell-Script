without Shell Scripting
------------------------------------
1. manual installation
2. time taking 
3. easy to do mistakes
4. more time if you have to do multiple times


to do some automation for external system by using python-scripting

to do some automation with in the server by using shell-scripting

Automation inside Linux, that is internal.... go for shell script

Automation outside Linux, that is internal.... go for python script

1. what is shebang?

#!/bin/bash ---> shebang 
shebang is first line of shell script
you should inform linux server through shebang, how to execute the script 

2. how to excute a command in shell script and take the output?
  
shell script run the command inside $() and stores the output into varible called DATE.
DATE=$(date)
echo "hello, this script is excuted at timestamp: $DATE "



