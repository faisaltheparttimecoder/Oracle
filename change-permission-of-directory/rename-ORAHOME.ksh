#!/bin/ksh

CURR_DIR=`pwd`
if [ $ORACLE_HOME != $CURR_DIR ]; then
   echo "Program: permiss_chg.sh must be run from ORACLE_HOME"
   echo "         cd $ORACLE_HOME"
   exit 1
fi

Set_Env ()
{
#
# Establish Environment
#

ORACLE_HOME="/opt/oracle/product/8.1.6"
}

Chg_Permiss_Orahome ()
{
#
# Change permissions for ORACLE_HOME directory.
#

chmod 755 $ORACLE_HOME
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
   if [ $ORACLE_HOME/$DIRECTORY = $ORACLE_HOME/. ]; then
     echo "dir = $ORACLE_HOME/$DIRECTORY - current directory do nothing loop" > /dev/null
   else
     cd $ORACLE_HOME/$DIRECTORY
     for FILE in `ls -1 $ORACLE_HOME/$DIRECTORY`
     do
       if [ -d $ORACLE_HOME/$DIRECTORY/$FILE ]; then
          echo "File is a directory do nothing loop" > /dev/null
       else
          if [ $ORACLE_HOME/$DIRECTORY = $ORACLE_HOME/./bin ]; then
             echo "dir = $ORACLE_HOME/$DIRECTORY - bin directory do nothing loop" > /dev/null
          else
             if [ -b $ORACLE_HOME/$DIRECTORY/$FILE ]; then
                echo "$FILE is a block special device"
             elif [ -c $ORACLE_HOME/$DIRECTORY/$FILE ]; then
                echo "$FILE is a character special device"
             elif [ -x $ORACLE_HOME/$DIRECTORY/$FILE ]; then
                echo "$ORACLE_HOME/$DIRECTORY/$FILE exists and is executable" > /dev/null
             else
               #echo "chmod 644 $ORACLE_HOME/$DIRECTORY/$FILE"
               chmod 644 $ORACLE_HOME/$DIRECTORY/$FILE
             fi
          fi
       fi
     done
   fi
done
}

Chg_Permiss_Bindir ()
{
chmod 751 $ORACLE_HOME/bin
chmod 751 $ORACLE_HOME/bin/*
}

Chg_Permiss_Suid ()
{
chmod 6751 $ORACLE_HOME/bin/oracle
chmod 6751 $ORACLE_HOME/bin/cmctl
chmod 6751 $ORACLE_HOME/bin/cmadmin
chmod 6751 $ORACLE_HOME/bin/cmgw
chmod 6751 $ORACLE_HOME/bin/names
chmod 6751 $ORACLE_HOME/bin/namesctl
chmod 6751 $ORACLE_HOME/bin/tnsping
chmod 6751 $ORACLE_HOME/bin/trcroute
chmod 6751 $ORACLE_HOME/bin/trcasst
chmod 6751 $ORACLE_HOME/bin/onrsd
chmod 6751 $ORACLE_HOME/bin/oemevent
chmod 6751 $ORACLE_HOME/bin/oratclsh
chmod 6751 $ORACLE_HOME/bin/dbsnmp
chmod 6751 $ORACLE_HOME/bin/lsnrctl
chmod 6751 $ORACLE_HOME/bin/tnslsnr
}

#
# Main Program.
#

Set_Env
Chg_Permiss_Orahome
Chg_Permiss_Dirs
Chg_Permiss_Files
Chg_Permiss_Bindir
Chg_Permiss_Suid
