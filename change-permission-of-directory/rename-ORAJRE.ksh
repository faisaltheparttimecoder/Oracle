#!/bin/ksh

CURR_DIR=`pwd`
if [ /opt/oracle/product/jre != $CURR_DIR ]; then
   echo "Program: permiss_chg_OraInv.sh must be run from /opt/oracle/product/jre"
   echo "         cd /opt/oracle/product/jre"
   exit 1
fi

Set_Env ()
{
#
# Establish Environment
#

ORAJRE_HOME="/opt/oracle/product/jre"
}

Chg_Permiss_Orahome ()
{
#
# Change permissions for ORAJRE_HOME directory.
#
chmod 755 $ORAJRE_HOME
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
   if [ $ORAJRE_HOME/$DIRECTORY = $ORAJRE_HOME/. ]; then
     echo "dir = $ORAJRE_HOME/$DIRECTORY - current directory do nothing loop" > /dev/null
   else
     cd $ORAJRE_HOME/$DIRECTORY
     for FILE in `ls -1 $ORAJRE_HOME/$DIRECTORY`
     do
       if [ -d $ORAJRE_HOME/$DIRECTORY/$FILE ]; then
          echo "File is a directory do nothing loop" > /dev/null
       else
          if [ $ORAJRE_HOME/$DIRECTORY = $ORAJRE_HOME/./bin ]; then
             echo "dir = $ORAJRE_HOME/$DIRECTORY - bin directory do nothing loop" > /dev/null
          else
             if [ -b $ORAJRE_HOME/$DIRECTORY/$FILE ]; then
                echo "$FILE is a block special device"
             elif [ -c $ORAJRE_HOME/$DIRECTORY/$FILE ]; then
                echo "$FILE is a character special device"
             elif [ -x $ORAJRE_HOME/$DIRECTORY/$FILE ]; then
                echo "$ORAJRE_HOME/$DIRECTORY/$FILE exists and is executable"
                #ls -la $ORAJRE_HOME/$DIRECTORY/$FILE
             else
               #echo "chmod 644 $ORAJRE_HOME/$DIRECTORY/$FILE"
               #file $ORAJRE_HOME/$DIRECTORY/$FILE
               chmod 644 $ORAJRE_HOME/$DIRECTORY/$FILE
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
