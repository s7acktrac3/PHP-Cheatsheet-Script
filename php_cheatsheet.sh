./php	
#!/bin/bash

cd /var/www/html/cmsimple-xh

echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"echo\" (Usually returns a lot, but we start off general and then begin to specify later on ...)$(tput sgr0)"
grep -Ri "echo" .
echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"echo\" : COMPLETE$(tput sgr0)"

echo ""

echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \$_ . | grep \"echo\" [Echoing any server variables]$(tput sgr0)"
grep -Ri "\$_" . | grep "echo"
echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \$_ . | grep \"echo\"  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"\$_GET\" . | grep \"echo\" [Echoing GET parameter]$(tput sgr0)"
grep -Ri "\$_GET" . | grep "echo"
echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"\$_GET\" . | grep \"echo\"  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"\$_POST\" . | grep \"echo\" [Echoing POST parameter]$(tput sgr0)"
grep -Ri "\$_GET" . | grep "echo"
echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"\$_POST\" . | grep \"echo\"  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"\$_REQUEST\" . | grep \"echo\" [Echoing REQUEST parameter]$(tput sgr0)"
grep -Ri "\$_GET" . | grep "echo"
echo "$(tput setaf 1) [XXS] - Searching via grep -Ri \"\$_REQUEST\" . | grep \"echo\"  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"shell_exec(\" . [Php function used to execute OS commands and return output as string]$(tput sgr0)"
grep -Ri "shell_exec(" .
echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"shell_exec(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"system(\" . [Php (copy of C like version) function used to execute OS commands and return output]$(tput sgr0)"
grep -Ri "system(" .
echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"system(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"exec(\" . [Executes an external program]$(tput sgr0)"
grep -Ri "exec(" .
echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"exec(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"popen(\" . [Opens a file pointer to process provided]$(tput sgr0)"
grep -Ri "popen(" .
echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"popen(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"passthru(\" . [Executes external program and display raw output]$(tput sgr0)"
grep -Ri "passthru(" .
echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"passthru(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"proc_open(\" . [Executes command and opens file pointers for i/o]$(tput sgr0)"
grep -Ri "proc_open(" .
echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"proc_open(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"pcntl_exec(\" . [Executes program in current process space]$(tput sgr0)"
grep -Ri "pcntl_exec(" .
echo "$(tput setaf 2) [COMMAND EXECUTION] - Searching via grep -Ri \"pcntl_exec(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"eval(\" . [Executes a string as PHP code]$(tput sgr0)"
grep -Ri "eval(" .
echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"eval(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"assert(\" . [Check if assertion is FALSE]$(tput sgr0)"
grep -Ri "assert(" .
echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"assert(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"preg_replace(\" . [Performs regex search and replace]$(tput sgr0)"
grep -Ri "preg_replace(" .
echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"preg_replace(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"create_function(\" . [Creates an an anonymous function]$(tput sgr0)"
grep -Ri "create_function" .
echo "$(tput setaf 3) [CODE EXECUTION] - Searching via grep -Ri \"create_function(\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 4) [SQL INJECTION] - Searching via grep -Ri \"grep -Ri \"\$sql\" . [Commonly used in db connection string]$(tput sgr0)"
grep -Ri "\$sql" .
echo "$(tput setaf 4) [SQL INJECTION] - Searching via grep -Ri \"grep -Ri \"\$sql\" .  : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 4) [SQL INJECTION] - Searching via grep -Ri \"\$sql\" . | grep \"\$_\" [Commonly used in db connection string, and any parameters]$(tput sgr0)"
grep -Ri "\$sql" . | grep "\$_"
echo "$(tput setaf 4) [SQL INJECTION] - Searching via grep -Ri \"\$sql\" . | grep \"\$_\" : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 5) [INFORMATION LEAKAGE] - Searching via grep -Ri \"phpinfo\" [Displays complete php configuration]$(tput sgr0)"
grep -Ri "phpinfo" . 
echo "$(tput setaf 5) [INFORMATION LEAKAGE] - Searching via grep -Ri \"phpinfo\" : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"file_include\" [Include file provided]$(tput sgr0)"
grep -Ri "file_include" . 
echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"file_include\" : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"include(\" [Includes and evaluates the specified file]$(tput sgr0)"
grep -Ri "include" . 
echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"include(\" : COMPLETE$(tput sgr0)"

echo "" 

echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"require(\" [Includes and evaluates the specified file]$(tput sgr0)"
grep -Ri "require(" . 
echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"require(\" : COMPLETE$(tput sgr0)"
echo "" 

echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"require(\$file)(\" [Includes and evaluates the specified file potentially provided by a controllable input parameter]$(tput sgr0)"
grep -Ri "require(\$file)" . 
echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"require(\$file)(\" : COMPLETE$(tput sgr0)"
echo "" 

echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"include_once(\" [Includes and evaluates the specified file once]$(tput sgr0)"
grep -Ri "include_once(" . 
echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"include_once(\" : COMPLETE$(tput sgr0)"
echo "" 

echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"require_once(\" [Includes and evaluates the specified file]$(tput sgr0)"
grep -Ri "require_once" . 
echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"require_once(\" : COMPLETE$(tput sgr0)"
echo "" 

echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"grep -Ri \"require_once(\" . | grep \"\$_\" [Includes and evaluates the specified file potentially provided by a controllable input parameter]$(tput sgr0)"
grep -Ri "require_once(" . | grep "\$_" 
echo "$(tput setaf 6) [RFI/LFI] - Searching via grep -Ri \"require_once(\" . | grep \"\$_\" : COMPLETE$(tput sgr0)"

