#!bin/bash -x

#1.Get user info from /etc/passwd
#a.View /etc/passwd file
cat passwd

#b.Print the 1st field from /etc/passwd file
cat passwd | awk -F: '{print $1}'

#c.Print all userids>1000
cat passwd | awk -F: '{if ($4>1000) print $0}'

#d.Print the 2nd field to get home directory
cat passwd | awk -F: '{print $6}'

#Get user list and home directory
cat passwd | awk -F: '{if ($4>1000) print $1" "$6}'

#2.Move files from one folder to the respective folders
#!/bin/bash
for filename in `ls *.txt`
do
        foldername=`echo $filename | awk -F. '{print $1}'`;
        if [ -d $foldername ]
        then
                rm -r $foldername;
        fi
        mkdir $foldername;
        mv $filename $foldername
        echo $filename "in" $foldername
done

#3.Append current date to all log files name which has extension .log.1 from a folder
#!/bin/bash
for file in `ls *.log.1`
do
        basename=`echo $file | awk -F. '{print $1 "." }'`;
        Last=`echo .log`;
        d=`date +%d%m%y`;
        cp  $file $basename$d$Last;
        echo $basename$d$Last;
done

#4.Archive the files from /var/log folder which have modified 7 days ago and move it to your backup folder
mv `find $file -mtime -7 | tail -4` /c/Users/ADMIN/TerminalCommands/linux-content/backuplog/

#5.Print last 4 frequently access urls count in sorted order from /var/log/httpd/access.log
access.log | awk '{print $11}' | sort | uniq -c | sort -nr | head -4

#6.Print list of last 4 frequently access unique urls at particular hours from /var/log/httpd/access.log
cat access.log | awk '{print $11}' | sort | uniq -c | sort -nr | head -4

#7.Print list of web response code count in the unique sorted order at specific hours
awk '{print $9}'  access.log | sort | uniq -c | sort -nr | head -4

#8.Print list of last 10 unique sorted client IP from /var/log/httpd/access.log
awk -F\" '{print $8}' access.log | sort | uniq -c | sort -nr | head -10

#9.Check if a folder exists or not. If it’s not present, create it.
#!/bin/bash

read folderName
if [ -d $folderName ]
then
	echo "Folder already exists...";
else
	echo "Folder created!"
        mkdir $folderName;
fi

#10.Execute command “hello” and “ls” and check its execution status and print whether command executed successful or not.
#!/bin/bash -x
hello
status1=`echo $?`
echo "$status1"
if(($status1==0))
then
        echo "Successfully executed!"
else
        echo "Not executed..."
fi

ls
status2=`echo $?`
echo "$status2"
if(($status2==0))
then
        echo "Successfully executed!"
else
	echo "Not executed..."
fi

#11.Set environment usersecret= “dH34xJaa23” if its already not set.
#!/bin/bash 
if [[ -z "user" ]]
then
	echo "Env is empty string"
else
	export user="dH34xJaa23"
	echo "Env value is set $user"
fi

#12.Find a word “systemd” from all log files in the folder /var/log and print number of occurrences more than 0 against each file.
#!/bin/bash
echo "Enter the name:"
read name
sum=0
for file in `find . -type f -name '*.txt' | awk -F/ '{print $2}'`
do
        word=`cat $file | grep -o $name | wc -l`
        if [ $word -gt 0 ]
        then
                sum=$(($sum+$word))
        fi
done
echo "Total number of occurrence is:"$sum

#13.Create process list table displays process id, parent process id, command name, % of memory consumption, % of cpu utilization.
#!/bin/bash 
ps axo pid, ppid, cmd, %mem, %cpu

#14.Data analysis/manipulation (AWK)
#a.print EmployeeName and TotalPay who has BasePay greater than 10000
cat data.csv | awk '{{if ( $4 > 10000 )} print $2" "$7}'

#b.what is the aggregate TotalPay of employees whose jobtitle is ‘CAPTAIN’
cat data.csv | grep -i captain |  awk '{sum+=$7} END{print sum}'

#c.print JobTitle and Overtimepay who has Overtimepay is between 7000 and 10000
cat data.csv | awk '{ {if ( $5 > 7000 && $5 < 10000 ) print $2" "$5}}'

#d.print average BasePay
cat data.csv | awk '{sum+=$4} END{print sum/NF}'

#15.Find the difference between original file and the updated file. Apply changes to the original file.
#!/bin/bash -x
for file in `ls *-file.sh`
do
        foldername=`echo $file | awk -F- '{print $1}'`
        if [ -d $foldername ]
        then
                rm -r $foldername
        fi
        mkdir $foldername
        cp $file $foldername
        echo $file "in" $foldername
done

diff -r original/original-file.sh updated/updated-file.sh
cp -r original original-backup
nano original-backup/original-file.sh
diff -r updated/updated-file.sh original-backup/original-file.sh
