#!/bin/ksh

CURR_DIR=`pwd`
if [ /opt/oracle/product/oraInventory != $CURR_DIR ]; then
   echo "Program: permiss_chg_OraInv.sh must be run from /opt/oracle/product/oraInventory"
   echo "         cd /opt/oracle/product/oraInventory"
   exit 1
fi

Set_Env ()
{
#
# Establish Environment
#

ORAINV_HOME="/opt/oracle/product/oraInventory"
}

Chg_Permiss_Orahome ()
{
#
# Change permissions for ORAINV_HOME directory.
#
chmod 755 $ORAINV_HOME
}

Chg_Permiss_Dirs ()
{
for DIRECTORY in `ls -laR | grep "^\." | sed 's/://g'`
do
   #echo $DIRECTORY
   chmod 755 $DIRECTORY
done
}

Chg_Permiss_Files ()
{
for DIRECTORY in `ls -laR | grep "^\." | sed 's/://g'`
do
   if [ $ORAINV_HOME/$DIRECTORY = $ORAINV_HOME/. ]; then
     echo "dir = $ORAINV_HOME/$DIRECTORY - current directory do nothing loop" > /dev/null
   else
     cd $ORAINV_HOME/$DIRECTORY
     for FILE in `ls -1 $ORAINV_HOME/$DIRECTORY`
     do
       if [ -d $ORAINV_HOME/$DIRECTORY/$FILE ]; then
          echo "File is a directory do nothing loop" > /dev/null
       else
          if [ $ORAINV_HOME/$DIRECTORY = $ORAINV_HOME/./bin ]; then
             echo "dir = $ORAINV_HOME/$DIRECTORY - bin directory do nothing loop" > /dev/null
          else
             if [ -b $ORAINV_HOME/$DIRECTORY/$FILE ]; then
                echo "$FILE is a block special device"
             elif [ -c $ORAINV_HOME/$DIRECTORY/$FILE ]; then
                echo "$FILE is a character special device"
             elif [ -x $ORAINV_HOME/$DIRECTORY/$FILE ]; then
                echo "$ORAINV_HOME/$DIRECTORY/$FILE exists and is executable"
             else
               #echo "chmod 644 $ORAINV_HOME/$DIRECTORY/$FILE"
               #file $ORAINV_HOME/$DIRECTORY/$FILE
               chmod 644 $ORAINV_HOME/$DIRECTORY/$FILE
             fi
          fi
       fi
     done
   fi
done
}

#
# Main Program.
#

Set_Env
Chg_Permiss_Orahome
Chg_Permiss_Dirs
Chg_Permiss_Files
