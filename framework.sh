#!/bin/bash

clear

gway=$(ip route | grep default | cut -d " " -f 3)
host=$(hostname)
locip=$(hostname -I)
loint=$(ifconfig | grep -B 1 "$locip" | head -n 1 | cut -d ":" -f 1)
lomac=$(macchanger -s $loint | grep "Current" | cut -d "$'\t'" -f 2)
lomac=$(ifconfig | grep -A 5 "$locip" | grep "ether" | sed 's/^[ \t]*//' | cut -d " " -f 2)

banner(){	
	echo ""
	echo "     -----------   PENETRATION TESTING FRAMEWROK   -----------"
     	echo "    User: $usrnm"
	echo "    IP Address: $locip"
	echo "    MAC Address: $lomac"
	echo "    Default Gateway: $gway"
	echo "----------------------------------------------------------------------"
	echo "                      | Created by Meenakshi |"
	echo ""
}

webeoop() {
	echo -e "\n-------------- EXIT --------------\n"
        echo "1. Go back to the previous menu"
        echo "2. Go back to the main menu"
	echo "3. Logout"
        echo -e "4. Exit\n"
        read -p "- What do you want to do? " opt1
	until [[ $opt1 == 1 || $opt1 == 2 || $opt1 == 3 || $opt1 == 4 ]]
	do
		read -p "Invalid input. Pleas select correct option: " opt1
	done
	if [[ $opt1 == 1 ]]; then
		webfootprint
        elif [[ $opt1 == 2 ]]; then
                mainmenu
        elif [[ $opt1 == 3 ]]; then
                login
	elif [[ $opt1 == 4 ]]; then
		exit
	fi

}

macheoop() {
  	echo -e "\n-------------- EXIT --------------\n"
        echo "1. Go back to the previous menu"
        echo "2. Go back to the main menu"
	echo "3. Logout"
        echo -e "4. Exit\n"
        read -p "- What do you want to do? " opt1
	until [[ $opt1 == 1 || $opt1 == 2 || $opt1 == 3 || $opt1 == 4 ]]
	do
		read -p "Invalid input. Please select correct option: " opt1
	done
	if [[ $opt1 == 1 ]]; then
		machfootprint
        elif [[ $opt1 == 2 ]]; then
                mainmenu
	elif [[ $opt1 == 3 ]]; then
		login
        elif [[ $opt1 == 4 ]]; then
                exit
	fi
}

scaneoop() {
	echo -e "\n-------------- EXIT --------------\n"
        echo "1. Go back to the previous menu"
        echo "2. Go back to the main menu"
	echo "3. Logout"
        echo -e "4. Exit\n"
	read -p "- What do you want to do? " opt1
	until [[ $opt1 == 1 || $opt1 == 2 || $opt1 == 3 || $opt1 == 4 ]]
	do
		read -p "Invalid input. Please select correct option: " opt1
	done
       	if [[ $opt1 == 1 ]]; then
		scanning
        elif [[ $opt1 == 2 ]]; then
                mainmenu
	elif [[ $opt1 == 3 ]]; then
		login
        elif [[ $opt1 == 4 ]]; then
                exit
	fi
}

deltempfiles() {
	if [[ -f .ping.txt ]]; then
		rm -rf .ping.txt
	fi
	if [[ -f .ping2.txt ]]; then
		rm -rf .ping2.txt
	fi
	if [[ -f .info.txt ]]; then
		rm -rf .info.txt
	fi
	if [[ -f .info2.txt ]]; then
		rm -rf .info2.txt
	fi
	if [[ -f .nslook.txt ]]; then
		rm -rf .nslook.txt
	fi
	if [[ -f .nslook2.txt ]]; then
		rm -rf .nslook2.txt
	fi
	if [[ -f .siteloc.txt ]]; then
		rm -rf .siteloc.txt
	fi
	if [[ -f .sitloc.txt ]]; then
		rm -rf .sitloc.txt
	fi
	if [[ -f .domipage.txt ]]; then
		rm -rf .domipage.txt
	fi
	if [[ -f .dnsenum.txt ]]; then
		rm -rf .dnsenum.txt
	fi
	if [[ -f .dnsenum2.txt ]]; then
		rm -rf .dnsenum2.txt
	fi
	if [[ -f .tracert.txt ]]; then
		rm -rf .tracert.txt
	fi
	if [[ -f .tracert2.txt ]]; then
		rm -rf .tracert2.txt
	fi
	if [[ -f .digl.txt ]]; then
		rm -rf .digl.txt
	fi
	if [[ -f .netdiscover.txt ]]; then
		rm -rf .netdiscover.txt
	fi	
	if [[ -f .pnmap.txt ]]; then
		rm -rf .pnmap.txt
	fi
	if [[ -f .pingsc.txt ]]; then
		rm -rf .pingsc.txt
	fi
	if [[ -f .quicksc.txt ]]; then
		rm -rf .quicksc.txt
	fi
	if [[ -f .nmapn.txt ]]; then
		rm -rf .nmapn.txt
	fi
	if [[ -f .ftcpsc.txt ]]; then
		rm -rf .ftcpsc.txt
	fi
	if [[ -f .nmapn2.txt ]]; then
		rm -rf .nmapn2.txt
	fi
	if [[ -f .nmapn3.txt ]]; then
		rm -rf .nmapn3.txt
	fi
	if [[ -f .nmapn4.txt ]]; then
		rm -rf .nmapn4.txt
	fi
	if [[ -f .nmapn5.txt ]]; then
		rm -rf .nmapn5.txt
	fi
	if [[ -f .nmapn6.txt ]]; then
		rm -rf .nmapn6.txt
	fi
	if [[ -f .nmapn7.txt ]]; then
		rm -rf .nmapn7.txt
	fi
	if [[ -f .nmapn8.txt ]]; then
		rm -rf .nmapn8.txt
	fi
	if [[ -f .stsc.txt ]]; then
		rm -rf .stsc.txt
	fi
	if [[ -f .intsc.txt ]]; then
		rm -rf .intsc.txt
	fi
	if [[ -f .intudpsc.txt ]]; then
		rm -rf .intudpsc.txt
	fi
	if [[ -f .intnpsc.txt ]]; then
		rm -rf .intnpsc.txt
	fi
	if [[ -f .winsc.txt ]]; then
		rm -rf .winsc.txt
	fi
	if [[ -f .maimsc.txt ]]; then
		rm -rf .maimsc.txt
	fi
	if [[ -f .script1.txt ]]; then
		rm -rf .script1.txt
	fi
	if [[ -f .script2.txt ]]; then
		rm -rf .script2.txt
	fi
	if [[ -f .script3.txt ]]; then
		rm -rf .script3.txt
	fi
	if [[ -f .script4.txt ]]; then
		rm -rf .script4.txt
	fi
	if [[ -f .script5.txt ]]; then
		rm -rf .script5.txt
	fi
	if [[ -f .synsc.txt ]]; then
		rm -rf .synsc.txt
	fi
	if [[ -f .acksc.txt ]]; then
		rm -rf .acksc.txt
	fi
	if [[ -f .finsc.txt ]]; then
		rm -rf .finsc.txt
	fi
	if [[ -f .xmassc.txt ]]; then
		rm -rf .xmassc.txt
	fi
	if [[ -f .nullsc.txt ]]; then
		rm -rf .nullsc.txt
	fi
}

siteupcheck() {
	echo -e "\n- Checking if the website is up, please wait."
	upstatus=$(HEAD -d $domname | awk '{print $1;}')
	if [[ $upstatus -eq '200' ]]; then
		echo "- Response Code: 200 OK  -->  The website is up."
	elif [[ $upstatus -eq '400' ]]; then
		echo "- Response Code: 400 Bad Request  -->  The website is not up."
	elif [[ $upstatus -eq '403 ' ]]; then
		echo "- Response Code: 403 Forbidden  -->  The Website is not up"
	elif [[ $upstatus -eq '404' ]]; then
		echo "- Response Code: 404 Not Found  -->  The website is not up."
	else
		echo "Sorry, Cannot determine if the website is up or not."
	fi
	echo ""
}

hostupcheck() {
	echo -e "\n- Checking if the host is up (using ping), please wait."
	ping -c 1 $ipaddr &> /dev/null && echo "- Host is up" || echo "- Host might be Down."
	ping -c 1 $ipaddr >> .ping.txt
	ttlv=$(cat .ping.txt | grep "ttl" | head -1 | cut -d " " -f 6 | cut -d "=" -f 2)
	if [[ $ttlv == '64' ]]; then
		osd="Linux"
	else
		osd="Windows"
	fi
	rm -rf .ping.txt
}

png() {
	clear
	banner
	echo "-------------- PING UTILITY --------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	echo ""
	read -p "- Number of packets you want to send: " nc
	echo "- Running ping on $domname."
	ping -c $nc $domname >> .ping.txt
	cat .ping.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn22
	until [[ $yn22 == "y" || $yn22 == "Y" || $yn22 == "n" || $yn22 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn22
	done
	if [[ $yn22 == "Y" || $yn22 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/ping.txt ]]; then
			read -p "- Previously saved output 'ping.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/ping.txt
				cp .ping.txt outputs/$usrnm/website/$domname/ping.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/ping.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .ping.txt outputs/$usrnm/website/$domname/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .ping.txt outputs/$usrnm/website/$domname/ping.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/ping.txt"
		fi
	elif [[ $yn22 == "N" || $yn22 == "n" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .ping.txt
	webeoop
}

whoisl() {
	clear
	banner
	echo "------------- WHOIS LOOKUP ---------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	echo ""
	whois $domname > .info.txt
	if [[ $(cat .info.txt | grep -o "Timeout") == "Timeout" ]]; then
		echo ""
		echo " The whois lookup of $domname is not possible at this moment."
		echo " Maybe a firewall is blocking it?"
		echo ""
		read -n 1 -s -r -p "Press any key to continue to the previous menu"
		webfootprint
	fi
	echo " Domain Name                 --> $(cat .info.txt | grep "  Domain Name" | cut -d ":" -f 2)" >> .info2.txt
	echo "" >> .info2.txt
	echo " Registrar                   --> $(cat .info.txt | grep -w "   Registrar:" | cut -d ":" -f 2)" >> .info2.txt
	echo " Registrar Whois Server      --> $(cat .info.txt | grep "  Registrar WHOIS" | cut -d ":" -f 2)" >> .info2.txt
	echo " Registrar URL               --> $(cat .info.txt | grep "  Registrar URL" | cut -d " " -f 3)" >> .info2.txt
	echo " Registrar IANA ID           --> $(cat .info.txt | grep "  Registrar IANA" | cut -d ":" -f 2)" >> .info2.txt
	echo "" >> .info2.txt
	echo " Registrant Organization     --> $(cat .info.txt | grep "Registrant Organization" | cut -d ":" -f 2)" >> .info2.txt
	echo " Registrant State/Province   --> $(cat .info.txt | grep "Registrant State/Province" | cut -d ":" -f 2)" >> .info2.txt
	echo " Registrant Country          --> $(cat .info.txt | grep "Registrant Country" | cut -d ":" -f 2)" >> .info2.txt
	echo "" >> .info2.txt
	echo " Admin Organization          --> $(cat .info.txt | grep "Admin Organization" | cut -d ":" -f 2)" >> .info2.txt
	echo " Admin State/Province        --> $(cat .info.txt | grep "Admin State/Province" | cut -d ":" -f 2)" >> .info2.txt
	echo " Admin Country               --> $(cat .info.txt | grep "Admin Country" | cut -d ":" -f 2)" >> .info2.txt
	echo "" >> .info2.txt
	echo " Tech Organization           --> $(cat .info.txt | grep "Tech Organization" | cut -d ":" -f 2)" >> .info2.txt
	echo " Tech State/Province         --> $(cat .info.txt | grep "Tech State/Province" | cut -d ":" -f 2)" >> .info2.txt
	echo " Tech Country                --> $(cat .info.txt | grep "Tech Country" | cut -d ":" -f 2)" >> .info2.txt
	nserver=$(cat .info.txt | grep "   Name Server" | cut -d ":" -f 2)
	echo -e " Domain Names             --> $nserver" >> .info2.txt
	cat .info2.txt
	read -p $'\n'"- Do you want to save the output? (y/n) " yn22
	until [[ $yn22 == "y" || $yn22 == "Y" || $yn22 == "n" || $yn22 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn22
	done
	if [[ $yn22 == "Y" || $yn22 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/whois.txt ]]; then
			read -p "- Previously saved file 'whois.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/whois.txt
				cp .info2.txt outputs/$usrnm/website/$domname/whois.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/whois.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .info2.txt outputs/$usrnm/website/$domname/$nnm1
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .info2.txt outputs/$usrnm/website/$domname/whois.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/whois.txt"
		fi
	elif [[ $yn22 == "N" || $yn22 == "n" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .info.txt
	rm -rf .info2.txt
	webeoop
}

nslook() {
	clear
	banner
	echo "----------- NSLOOKUP UTILITIES -----------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	echo ""
	echo -e "Running NSLookup on $domname. Please wait."
	echo ""
	echo -e "\n- IPv4 (A) --->" >> .nslook.txt
	nslookup -query=A $domname | sed '1,3d' >> .nslook.txt
	echo -e "\n-IPv6 (AAAA) --->" >> .nslook.txt
	nslookup -query=AAAA $domname | sed '1,3d' >> .nslook.txt
	echo -e "\n-Name Servers (NS) --->" >> .nslook.txt
	nslookup -query=NS $domname | sed '1,3d' >> .nslook.txt
	echo -e "\n-Mail Exchange (MX) --->" >> .nslook.txt
	nslookup -query=MX $domname | sed '1,3d' >> .nslook.txt
	echo -e "\n-Start of Authority (SOA) --->" >> .nslook.txt
	nslookup -query=SOA $domname | sed '1,3d' >> .nslook.txt
	echo -e "\n-Zone Transfer (AXFR) --->" >> .nslook.txt
	nslookup -query=AXFR $domname | sed '1,3d' >> .nslook.txt
	cat .nslook.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn23
	until [[ $yn23 == "y" || $yn23 == "Y" || $yn23 == "n" || $yn23 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn23
	done
	if [[ $yn23 == "Y" || $yn23 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/nslookup.txt ]]; then
			read -p "- Previously saved file 'nslookup.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/nslookup.txt
				cp .nslook.txt outputs/$usrnm/website/$domname/nslookup.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/nslookup.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .nslook.txt outputs/$usrnm/website/$domname/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .nslook.txt outputs/$usrnm/website/$domname/nslookup.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/nslookup.txt"
		fi
	elif [[ $yn23 == "N" || $yn23 == "n" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nslook.txt
	webeoop
}

websitelocation() {
	clear
	banner
	echo "------ WEBSITE LOCATION INFORMATION ------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	echo ""
	curl -s https://ipapi.co/$ipaddr/json/ > .siteloc.txt
	echo "IP Address 		  -->  $(cat .siteloc.txt | grep "ip" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "City 			  -->  $(cat .siteloc.txt | grep "city" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Region Name 		  -->  $(cat .siteloc.txt | grep -w "region" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Region Code 		  -->  $(cat .siteloc.txt | grep "region_code" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Country Code 		  -->  $(cat .siteloc.txt | grep -w "country" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Country Name 		  -->  $(cat .siteloc.txt | grep "country_name" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Postal Code 		  -->  $(cat .siteloc.txt | grep "postal" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Latitude                  -->  $(cat .siteloc.txt | grep "latitude" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Longitude 		  -->  $(cat .siteloc.txt | grep "longitude" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Time Zone 		  -->  $(cat .siteloc.txt | grep "timezone" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "UTC Offset (+-HMMM) 	  -->  $(cat .siteloc.txt | grep "utc_offset" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Country Calling Code 	  -->  $(cat .siteloc.txt | grep "country_calling_code" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Currency                  -->  $(cat .siteloc.txt | grep "currency" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Autonomous System Number  -->  $(cat .siteloc.txt | grep "asn" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	echo "Organization 		  -->  $(cat .siteloc.txt | grep "org" | cut -d ":" -f 2 | cut -d '"' -f 2)" >> .sitloc.txt
	cat .sitloc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn23
	until [[ $yn23 == "y" || $yn23 == "Y" || $yn23 == "n" || $yn23 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn23
	done
	if [[ $yn23 == "Y" || $yn23 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/sitelocation.txt ]]; then
			read -p "- Previously saved file 'sitelocation.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/sitelocation.txt
				cp .sitloc.txt outputs/$usrnm/website/$domname/sitelocation.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/sitelocation.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .sitloc.txt outputs/$usrnm/website/$domname/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .sitloc.txt outputs/$usrnm/website/$domname/sitelocation.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/sitelocation.txt"
		fi
	elif [[ $yn23 == "n" || $yn23 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .sitloc.txt	
	rm -rf .siteloc.txt
	webeoop
}

domainage() {
	clear
	banner
	echo "------------ DOMAIN / IP AGE -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	dage=$(curl -s https://input.payapi.io/v1/api/fraud/domain/age/$domname | grep "days" | cut -d " " -f 4)
	iage=$(curl -s https://input.payapi.io/v1/api/fraud/ipdata/age/$ipaddr | grep "days" | cut -d " " -f 5 )
	if [[ -z $dage ]]; then
		echo -e "\n--> $domname domain age information is not available." >> .domipage.txt
	else
		echo -e "\n--> $domname domain name is $dage days old." >> .domipage.txt
	fi
	if [[ -z $iage ]]; then
		echo -e "\n--> IP Address age information for $domname ($ipaddr) is not available." >> .domipage.txt
	else
		echo -e "\n--> IP Address of $domname ($ipaddr) is $iage days old." >> .domipage.txt
	fi
	cat .domipage.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn23
	until [[ $yn23 == "y" || $yn23 == "Y" || $yn23 == "n" || $yn23 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn23
	done
	if [[ $yn23 == "Y" || $yn23 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/domainipage.txt ]]; then
			read -p "- Previously saved file 'domainipage.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/domainipage.txt
				cp .domipage.txt outputs/$usrnm/website/$domname/domainipage.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/domainipage.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .domipage.txt outputs/$usrnm/website/$domname/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .domipage.txt outputs/$usrnm/website/$domname/domainipage.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/domainipage.txt"
		fi
	elif [[ $yn23 == "n" || $yn23 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .domipage.txt
	echo ""
	webeoop
}

dnsenume() {
	clear
	banner
	echo "-------- DNS ENUMERATION UTILITIES -------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	echo ""
	echo -e "Performing DNS Enumeration on $domname. Please wait."
	echo ""
	dnsenum $domname >> .dnsenum.txt
	cat .dnsenum.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn23
	until [[ $yn23 == "y" || $yn23 == "Y" || $yn23 == "n" || $yn23 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn23
	done
	if [[ $yn23 == "Y" || $yn23 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/dnsenum.txt ]]; then
			read -p "- Previously saved file 'dnsenum.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/dnsenum.txt
				cp .dnsenum.txt outputs/$usrnm/website/$domname/dnsenum.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/dnsenum.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .dnsenum.txt outputs/$usrnm/website/$domname/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .dnsenum.txt outputs/$usrnm/website/$domname/dnsenum.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/dnsenum.txt"
		fi
	elif [[ $yn23 == "n" || $yn23 == "N" ]]; then
		echo "- Output not saved."
	fi	
	rm -rf .dnsenum.txt
	webeoop
}

tracert() {
	clear
	banner
	echo "--------------- TRACEROUTE ---------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	echo ""
	echo -e "Performing Traceroute on $domname. Please wait."
	echo ""
	traceroute $domname >> .tracert.txt
	cat .tracert.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn23
	until [[ $yn23 == "y" || $yn23 == "Y" || $yn23 == "n" || $yn23 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn23
	done
	if [[ $yn23 == "Y" || $yn23 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/traceroute.txt ]]; then
			read -p "- Previously saved file 'traceroute.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/traceroute.txt
				cp .tracert.txt outputs/$usrnm/website/$domname/traceroute.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/traceroute.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .tracert.txt outputs/$usrnm/website/$domname/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .tracert.txt outputs/$usrnm/website/$domname/traceroute.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/traceroute.txt"
		fi
	elif [[ $yn23 == "n" || $yn23 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .tracert.txt
	webeoop
}

digl() {
	clear
	banner
	echo "------------- DIG UTILITIES --------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "webeoop" 2
	echo ""
	echo -e "Running DIG on $domname. Please wait."
	echo ""
	dig $domname >> .digl.txt
	cat .digl.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn23
	until [[ $yn23 == "y" || $yn23 == "Y" || $yn23 == "n" || $yn23 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn23
	done
	if [[ $yn23 == "Y" || $yn23 == "y" ]]; then
		if [[ -f outputs/$usrnm/website/$domname/dig.txt ]]; then
			read -p "- Previously saved file 'dig.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/website/$domname/dig.txt
				cp .digl.txt outputs/$usrnm/website/$domname/dig.txt
				echo "- Output successfully saved in outputs/$usrnm/website/$domname/dig.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .digl.txt outputs/$usrnm/website/$domname/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/website/$domname/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .digl.txt outputs/$usrnm/website/$domname/dig.txt
			echo "- Output successfully saved in outputs/$usrnm/website/$domname/dig.txt"
		fi
	elif [[ $yn23 == "n" || $yn23 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .digl.txt
	webeoop	
}

webfootprint() {
	deltempfiles
	clear
	banner
	echo "---------- WEBSITE FOOTPRINTING ----------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n---  Website Tools: "
	echo "1. Ping"
	echo "2. Website Information (Whois Lookup)"
	echo "3. Website Location"
	echo "4. Domain/IP age"
	echo -e "\n--- DNS Tools:"
	echo "5. NSLookup"
	echo "6. DNS Enumeration"
	echo "7. Traceroute"
	echo "8. Dig"
	echo -e "\n00. Previous Menu"
	echo "01. Main Menu"
	echo "02. Change the target"
	echo "03. Logout"
	echo "04. Exit"
	read -p "Select an option: " opt1
	until [[ $opt1 == 1 || $opt1 == 2 || $opt1 == 3 || $opt1 == 4 || $opt1 == 5 || $opt1 == 6 || $opt1 == 7 || $opt1 == 8 || $opt1 == "00" || $opt1 == "01" || $opt1 == "02" || $opt1 == "03" || $opt1 == "04" ]]
	do
		read -p "Invalid input. Please select correct option: " opt1
	done
	case $opt1 in
		1) png ;;
		2) whoisl ;;
		3) websitelocation ;;
		4) domainage ;;
		5) nslook ;;
		6) dnsenume ;;
		7) tracert ;;
		8) digl ;;
		00) footprint ;;
		01) mainmenu ;;
		02) domaininput ;;
		03) login ;;
		04) exit ;;
	esac
}

domaininput() {
	deltempfiles
	clear
	banner
	echo "---------- WEBSITE FOOTPRINTING ----------"
	echo "**Press ctrl+c to go to the previous menu."
	trap "footprint" 2
	echo -e "\nEnter the Domain name (Website Address) of the target."
        echo "**NOTE: Do not enter the IP address."
        echo ""
        read -p "--> " domname
	until [[ $domname =~ ^[A-Za-z0-9._%+-]+\.[A-Za-z0-9]{2,4}$ ]];
	do
		read -p "Please enter correct domain name: " domname
	done
        echo -e "\n- Finding the IP Address of $domname, please wait."
	dir2=outputs/$usrnm/website/
	if [[ ! -d $dir2 ]]; then
		mkdir outputs/$usrnm/website/
	fi
	dir3=outputs/$usrnm/website/$domname/
	if [[ ! -d $dir3 ]]; then
		mkdir outputs/$usrnm/website/$domname/
	fi
	sleep 1
	ipaddr=$(nslookup $domname | grep "Address" | sed -n '2 p' | cut -d ":" -f 2 | sed 's/^[ \t]*//')
	echo "- IP Address of the Target Website   -->   $ipaddr"
	siteupcheck
	echo ""
	echo -e "\n- What do you want to do now? "
	echo "1. Change the target"
	echo "2. Continue to Footprinting tools"
	echo "3. Go back"
	read -p "- Select an option " yn15
	until [[ $yn15 == 1 || $yn15 == 2 || $yn15 == 3 ]]
	do
		read -p "Select a correct option: " yn15
	done
	if [[ $yn15 == 1 ]]; then
		domaininput	
	elif [[ $yn15 == 2 ]]; then
		webfootprint
	elif [[ $yn15 == 3 ]]; then
		footprint
	fi 
}

footprint() {
	deltempfiles
	clear
	banner
	unset ipaddr
	unset domname
	echo "---------- FOOTPRINTING ----------"
	echo -e "\n- Select the type of target: "
	echo "1. Websites"
	echo "2. Web servers and Local Machines"
	echo -e "\n00. Main Menu"
	echo "01. Logout"
	echo "02. Exit"
	echo ""
	read -p "Select: " lopt1
	until [[ $lopt1 == 1 || $lopt1 == 2 || $lopt1 == "00" || $lopt1 == "01" || $lopt1 == "02" ]]
	do
		read -p "Invalid input. Please select correct option: " lopt1
	done
	case $lopt1 in
		1) 
			clear
			domaininput
			;;
	        2) 
			clear
			machinput ;;
		00)
			mainmenu ;;
		01)
			login ;;
		02)
			exit ;;
	esac 
}

machinput() {
	deltempfiles
	clear
	banner
	echo "---------- MACHINE FOOTPRINTING ----------"
	echo "**Press ctrl+c to go to the previous menu."
	trap "footprint" 2
	echo -e "\n- What do you want to do?"
	echo "1. Enter the IP address of the target machine"
	echo "2. Scan your network for the available IP Addresses"
	read -p "Select: " machinp
	until [[ $machinp == 1 || $machinp == 2 ]]
	do
		read -p "- Invalid input. Please select correct option: " machinp
	done
	case $machinp in
		1)
			echo ""
			read -p "- Enter the Target IP Address: " ipaddr
			while [[ ! $ipaddr =~ ^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$ ]]
			do
				read -p "- Enter correct IP Address: " ipaddr
			done
			while [[ $ipaddr == $locip ]]
			do
				read -p "- You have entered your own IP Address. Enter another target IP Address: " ipaddr
			done
			hostupcheck
			echo -e "\n- What do you want to do now? "
			echo "1. Change the target"
			echo "2. Continue to Footprinting tools"
			echo "3. Go back"
			read -p "- Select an option " yn15
			until [[ $yn15 == 1 || $yn15 == 2 || $yn15 == 3 ]]
			do
				read -p "Invalid input. Select a correct option: " yn15
			done
			if [[ $yn15 == 1 ]]; then
				machinput	
			elif [[ $yn15 == 2 ]]; then
				dir4=outputs/$usrnm/machine/
				if [[ ! -d $dir4 ]]; then
					mkdir outputs/$usrnm/machine/
				fi
				dir5=outputs/$usrnm/machine/$ipaddr
				if [[ ! -d $dir5 ]]; then
					mkdir outputs/$usrnm/machine/$ipaddr
				fi
				machfootprint
			elif [[ $yn15 == 3 ]]; then
				footprint
			fi ;;
		2)
			echo ""
			echo "Running Netdiscover to get all the IP Addresses in the network. Please Wait."
			netdiscover -r $gway/24 -P -N >> .netdiscover.txt
			sed '$d' .netdiscover.txt | sed '$d'
			echo ""
			read -p "- Select the target IP Address: " ipaddr
			until [[ $ipaddr == $(cat .netdiscover.txt | grep -o "$ipaddr") ]]
			do
				echo "- The entered IP Address does not exist in the network."
				read -p "Please enter another IP Address: " ipaddr
			done
			while [[ ! $ipaddr =~ ^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$ ]]
			do
				read -p "- Enter correct IP Address: " ipaddr
			done
			while [[ $ipaddr == $locip ]]
			do
				read -p "- You have entered your own IP Address. Enter another target IP Address: " ipaddr
			done
			hostupcheck
			rm -rf .netdiscover.txt
			echo -e "\n- What do you want to do now? "
			echo "1. Change the target"
			echo "2. Continue to Footprinting tools"
			echo "3. Go back"
			read -p "- Select an option " yn15
			until [[ $yn15 == 1 || $yn15 == 2 || $yn15 == 3 ]]
			do
				read -p "Invalid input. Select a correct option: " yn15
			done
			if [[ $yn15 == 1 ]]; then
				machinput	
			elif [[ $yn15 == 2 ]]; then
				dir6=outputs/$usrnm/machine
				if [[ ! -d $dir6 ]]; then
					mkdir outputs/$usrnm/machine/
				fi
				dir7=outputs/$usrnm/machine/$ipaddr
				if [[ ! -d $dir7 ]]; then
					mkdir outputs/$usrnm/machine/$ipaddr
				fi
				machfootprint
			elif [[ $yn15 == 3 ]]; then
				footprint
			fi ;;
	esac
}

machfootprint() {
	deltempfiles
	clear
	banner
	echo "---------- MACHINE FOOTPRINTING ----------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Operating System: $osd"
	echo "------------------------------------------"
	echo -e "\n---  Available Tools: "
	echo "1. Ping"
	echo "2. Traceroute"
	echo "3. NSLookup"
	echo "4. DNS Enumeration (Will Work only for Servers)"
	echo "5. Enum4Linux (Only for Linux)"
	echo -e "\n00. Previous Menu"
	echo "01. Main Menu"
	echo "02. Change the Target IP Address"
	echo "03. Logout"
	echo "04. Exit"
	
	read -p "Select an option: " opt1
	until [[ $opt1 == 1 || $opt1 == 2 || $opt1 == 3 || $opt1 == 4 || $opt1 == 5 || $opt1 == "00" || $opt1 == "01" || $opt1 == "02" || $opt1 == "03" || $opt1 == "04" ]]
	do
		read -p "Invalid input. Please select correct option: " opt1
	done
	case $opt1 in
		1) png2 ;;
		2) tracert2 ;;
		3) nslook2 ;;
		4) dnsenume2 ;;
		5) enumflin ;;
		00) footprint ;;
		01) mainmenu ;;
		02) machinput ;;
		03) login ;;
		04) exit ;;
	esac

}

png2() {
	clear
	banner
	echo "-------------- PING UTILITY --------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "macheoop" 2
	echo ""
	read -p "- Number of packets you want to send: " nc
	echo "- Running ping on $ipaddr."
	ping -c $nc $ipaddr >> .ping2.txt
	cat .ping2.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn22
	until [[ $yn22 == "y" || $yn22 == "Y" || $yn22 == "n" || $yn22 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn22
	done
	if [[ $yn22 == "Y" || $yn22 == "y" ]]; then
		if [[ -f outputs/$usrnm/machine/$ipaddr/ping.txt ]]; then
			read -p "- Previously saved file '.ping.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/machine/$ipaddr/ping.txt
				cp .ping2.txt outputs/$usrnm/machine/$ipaddr/ping.txt
				echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/ping.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .ping2.txt outputs/$usrnm/machine/$ipaddr/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .ping2.txt outputs/$usrnm/machine/$ipaddr/ping.txt
			echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/ping.txt"
		fi
	elif [[ $yn22 == "n" || $yn22 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .ping2.txt
	macheoop
}

nslook2() {
	clear
	banner
	echo "----------- NSLOOKUP UTILITIES -----------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Operating System: $osd"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "macheoop" 2
	echo ""
	echo -e "Running NSLookup on $ipaddr. Please wait."
	echo ""
	echo -e "\n- IPv4 (A) --->" >> .nslook2.txt
	nslookup -query=A $ipaddr | sed '1,3d' >> .nslook2.txt
	echo -e "\n-IPv6 (AAAA) --->" >> .nslook2.txt
	nslookup -query=AAAA $ipaddr | sed '1,3d' >> .nslook2.txt
	echo -e "\n-Name Servers (NS) --->" >> .nslook2.txt
	nslookup -query=NS $ipaddr | sed '1,3d' >> .nslook2.txt
	echo -e "\n-Mail Exchange (MX) --->" >> .nslook2.txt
	nslookup -query=MX $ipaddr | sed '1,3d' >> .nslook2.txt
	echo -e "\n-Start of Authority (SOA) --->" >> .nslook2.txt
	nslookup -query=SOA $ipaddr | sed '1,3d' >> .nslook2.txt
	echo -e "\n-Zone Transfer (AXFR) --->" >> .nslook2.txt
	nslookup -query=AXFR $ipaddr | sed '1,3d' >> .nslook2.txt
	cat .nslook2.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn23
	until [[ $yn23 == "y" || $yn23 == "Y" || $yn23 == "n" || $yn23 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn23
	done
	if [[ $yn23 == "Y" || $yn23 == "y" ]]; then
		if [[ -f outputs/$usrnm/machine/$ipaddr/nslookup.txt ]]; then
			read -p "- Previously saved file 'nslookup.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/machine/$ipaddr/nslookup.txt
				cp .nslook2.txt outputs/$usrnm/machine/$ipaddr/nslookup.txt
				echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/nslookup.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .nslook2.txt outputs/$usrnm/machine/$ipaddr/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .nslook2.txt outputs/$usrnm/machine/$ipaddr/nslookup.txt
			echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/ping.txt"
		fi
	elif [[ $yn23 == "n" || $yn23 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nslook2.txt
	macheoop
}

dnsenume2() {
	clear
	banner
	echo "-------- DNS ENUMERATION UTILITIES -------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Operating System: $osd"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "macheoop" 2
	echo ""
	echo -e "Performing DNS Enumeration on $ipaddr. Please wait."
	echo ""
	dnsenum $ipaddr >> .dnsenum2.txt
	cat .dnsenum2.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn27
	until [[ $yn27 == "y" || $yn27 == "Y" || $yn27 == "n" || $yn27 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn27
	done
	if [[ $yn27 == "Y" || $yn27 == "y" ]]; then
		if [[ -f outputs/$usrnm/machine/$ipaddr/dnsenum.txt ]]; then
			read -p "- Previously saved file 'dnsenum.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/machine/$ipaddr/dnsenum.txt
				cp .dnsenum2.txt outputs/$usrnm/machine/$ipaddr/dnsenum.txt
				echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/dnsenum.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .dnsenum2.txt outputs/$usrnm/machine/$ipaddr/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .dnsenum2.txt outputs/$usrnm/machine/$ipaddr/dnsenum.txt
			echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/ping.txt"
		fi
	elif [[ $yn27 == "n" || $yn27 == "N" ]]; then
		echo "- Output not saved."
	fi	
	rm -rf .dnsenum2.txt
	macheoop
}

tracert2() {
	clear
	banner
	echo "--------------- TRACEROUTE ---------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Operating System: $osd"
	echo "------------------------------------------"
	echo "**Press ctrl+c to see the exit menu."
	trap "macheoop" 2
	echo ""
	echo -e "Performing Traceroute on $ipaddr. Please wait."
	echo ""
	traceroute $ipaddr >> .tracert2.txt
	cat .tracert2.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn28
	until [[ $yn28 == "y" || $yn28 == "Y" || $yn28 == "n" || $yn28 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn28
	done
	if [[ $yn28 == "Y" || $yn28 == "y" ]]; then
		if [[ -f outputs/$usrnm/machine/$ipaddr/traceroute.txt ]]; then
			read -p "- Previously saved file 'traceroute.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/machine/$ipaddr/traceroute.txt
				cp .tracert2.txt outputs/$usrnm/machine/$ipaddr/traceroute.txt
				echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/traceroute.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .tracert2.txt outputs/$usrnm/machine/$ipaddr/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .tracert2.txt outputs/$usrnm/machine/$ipaddr/traceroute.txt
			echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/ping.txt"
		fi
	elif [[ $yn28 == "N" || $yn28 == "n" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .tracert2.txt
	macheoop
}

enumflin() {
	clear
	banner
	echo "-------------- ENUM4LINUX ----------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo " Operating System: $osd"
	echo "------------------------------------------"
	echo -e "\n- Running enum4linux on the $ipaddr"
	enum4linux $ipaddr >> .enumflin.txt
	cat .enumflin.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn34
	until [[ $yn34 == "y" || $yn34 == "Y" || $yn34 == "n" || $yn34 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn34
	done
	if [[ $yn34 == "Y" || $yn34 == "y" ]]; then
		if [[ -f outputs/$usrnm/machine/$ipaddr/enumflin.txt ]]; then
			read -p "- Previously saved file 'traceroute.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/machine/$ipaddr/enumflin.txt
				cp .enumflin.txt outputs/$usrnm/machine/$ipaddr/enumflin.txt
				echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/enumflin.txt"

			else
				read -p "Save it under a different name? (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .enumflin.txt outputs/$usrnm/machine/$ipaddr/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/$nnm1.txt"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .enumflin.txt outputs/$usrnm/machine/$ipaddr/enumflin.txt
			echo "- Output successfully saved in outputs/$usrnm/machine/$ipaddr/ping.txt"
		fi
	elif [[ $yn34 == "N" || $yn34 == "n" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .enumflin.txt
	macheoop
}

scaninput() {
	deltempfiles
	clear
	banner
	echo -e "\n------- SCANNING FRAMEWORK --------"
	echo "**Press ctrl+c to go back to the previous menu."
	trap "mainmenu" 2
	echo ""
	dir8=outputs/$usrnm/scanning/
	if [[ ! -d $dir8 ]]; then
		mkdir outputs/$usrnm/scanning/
	fi
	read -p "- Enter Target: " tar
	until [[ $tar =~ ^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$ || $tar =~ ^[A-Za-z0-9._%+-]+\.[A-Za-z0-9]{2,4}$ ]]
	do
		read -p "- Enter a valid target: " tar
	done
	if [[ $tar =~ ^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$ ]]; then
		echo "- You have entered IP Address as the target."
		ipaddr=$tar
		domname=""
		hostupcheck
	elif [[ $tar =~ ^[A-Za-z0-9._%+-]+\.[A-Za-z0-9]{2,4}$ ]]; then
		echo "- You have entered a domain name"
		domname=$tar
		siteupcheck
		ipaddr=$(nslookup $domname | grep "Address" | sed -n '2 p' | cut -d ":" -f 2 | sed 's/^[ \t]*//')
		echo "- IP Address of the Target Website   -->   $ipaddr"
	fi
	dir100=outputs/$usrnm/scanning/$tar
	if [[ ! -d $dir100 ]]; then
		mkdir outputs/$usrnm/scanning/$tar/
	fi
	echo -e "\n- What do you want to do now? "
	echo "1. Change the target"
	echo "2. Continue to scanning"
	echo "3. Go back"
	read -p "- Select an option " yn15
	until [[ $yn15 == 1 || $yn15 == 2 || $yn15 == 3 ]]
	do
		read -p "Select a correct option: " yn15
	done
	if [[ $yn15 == 1 ]]; then
		scaninput
	elif [[ $yn15 == 2 ]]; then
		echo -e "\nThe framework will use Nmap to run the scans."
		echo "Select what options you want: (Default is No)"
		read -p "- Force DNS Resolution? (y/n) " dr1
		read -p "- Service Detection (y/n) " sd1
		read -p "- Verbose? (y/n) " v1
		read -p "- Timing? (T1, T2, T3, T4, T5)" t1
		read -p "- OS Detection? (y/n) " od1

		if [[ $dr1 == "y" || $dr1 == "Y" ]]; then
			dr="-R"
		else
			dr=""
		fi
		if [[ $sd1 == "y" || $sd1 == "Y" ]]; then
			sd="-sV"
		else
			sd=""
		fi
		if [[ $v1 == "y" || $v1 == "Y" ]]; then
			v="-v"
		else
			v=""
		fi
		case $t1 in
			T1) t="-T1";;
			T2) t="-T2";;
			T3) t="-T3";;
			T4) t="-T4";;
			T5) t="-T5";;
			*) t="";
		esac
		if [[ $od1 == "y" || $od1 == "Y" ]]; then
			od="-O"
		else
			od=""
		fi
		echo ""
		read -n 1 -s -r -p "- Press any key to continue to scanning."
		scanning
	elif [[ $yn15 == 3 ]]; then
		mainmenu
	fi
}

scanning() {
	deltempfiles
	clear
	banner
	echo -e "\n------- SCANNING FRAMEWORK --------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo ""
	echo "- Following options are available:"
	echo ""
	echo "1. Host Discovery (Ping Scan)"
	echo "2. Quick Scan"
	echo "3. Full TCP Scan"
	echo "4. Stealth Scan"
	echo "5. Intense Scan"
	echo "6. Intense Scan w/ UDP"
	echo "7. Intense Scan (no ping)"
	echo "8. Flag Specific Scan (Exporting output not possible)"
	echo "9. Window Scan"
	echo "10. Maimon Scan"
	echo "11. Nmap Scripting Engine (Exporting output not possible)"
	echo -e "\n0. Previous Menu"
	echo "00. Main Menu"
	echo "01. Change the Target IP Address"
	echo "02. Logout"
	echo "03. Exit"
	echo ""
	read -p "Select an option: " lopt2
	until [[ $lopt2 == 1 || $lopt2 == 2 || $lopt2 == 3 || $lopt2 == 4 || $lopt2 == 5 || $lopt2 == 6 || $lopt2 == 7 || $lopt2 == 8 || $lopt2 == 9 || $lopt2 == 10 || $lopt2 == 11 || $lopt2 == "00" || $lopt2 == "01" || $lopt2 == "02" || $lopt2 == "03" ]]
	do
		read -p "Invalid option. Choose a correct option: " lopt2
	done
	case $lopt2 in
		1) pingscan ;;
		2) quickscan;;
		3) fulltcp;;
		4) stealthscan ;;
		5) intensescan;;
		6) intenseudp;;
		7) intensenoping;;
		8) flagscan;;
		9) windowscan;;
		10) maimonscan;;
		11) scripting;;
		0) mainmenu ;;
		00) mainmenu ;;
		01) scaninput ;;
		02) login ;;
		03) exit ;;
	esac
}

pingscan() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Scan --> Host Discovery (Ping Scan)"
	echo -e "- Scanning... Please wait"
	echo -e "- Selected Scan --> Host Discovery (Ping Scan)" >> .pingsc.txt
	echo -e "\n- Scan Results --->\n" >> .pingsc.txt
	nmap $dr $sd $v $t $od -sn $tar -oN .pnmap.txt
	cat .pnmap.txt | sed 1d >> .pingsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/pingscan.txt ]]; then
			read -p "- Previously saved output 'pingscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/pingscan.txt
				cp .pingsc.txt outputs/$usrnm/scanning/$tar/pingscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/pingscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .pingsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .pingsc.txt outputs/$usrnm/scanning/$tar/pingscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/pingscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .pnmap.txt
	rm -rf .pingsc.txt
	scaneoop
}

quickscan() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"	
	echo -e "\n- Selected Scan --> Quick Scan"
	echo -e "- Scanning... Please wait"
	echo -e "- Selected Scan --> Quick Scan" >> .quicksc.txt
	echo -e "\n- Scan Results --->\n" >> .quicksc.txt
	nmap $od $sd $dr -T4 -F $tar -oN .nmapn.txt
	cat .nmapn.txt | sed 1d >> .quicksc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/quickscan.txt ]]; then
			read -p "- Previously saved output 'quickscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/quickscan.txt
				cp .quicksc.txt outputs/$usrnm/scanning/$tar/quickscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/quickscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .quicksc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .quicksc.txt outputs/$usrnm/scanning/$tar/quickscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/quickscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn.txt
	rm -rf .quicksc.txt
	scaneoop
}

fulltcp() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"	
	echo -e "\n- Selected Scan --> Full TCP Scan"
	echo -e "- Scanning... Please wait" 
       	echo -e "- Selected Scan --> Full TCP Scan" >> .ftcpsc.txt
	echo -e "\n- Scan Results --->\n" >> .ftcpsc.txt
	nmap $od $sd $dr $v $t -sT $tar -oN .nmapn2.txt
	cat .nmapn2.txt | sed 1d >> .ftcpsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/fulltcpscan.txt ]]; then
			read -p "- Previously saved output 'fulltcpscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/fulltcpscan.txt
				cp .ftcpsc.txt outputs/$usrnm/scanning/$tar/fulltcpscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/fulltcpscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .ftcpsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .ftcpsc.txt outputs/$usrnm/scanning/$tar/fulltcpscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/fulltcpscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn2.txt
	rm -rf .ftcpsc.txt
	scaneoop
}

stealthscan() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Scan --> Stealth Scan"
	echo -e "- Scanning... Please wait"	
	echo -e "- Selected Scan --> Stealth Scan" >> .stsc.txt
	echo -e "\n- Scan Results --->\n" >> .stsc.txt
	nmap $od $sd $dr $v $t -sS $tar -oN .nmapn3.txt
	cat .nmapn3.txt | sed 1d >> .stsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/stealthscan.txt ]]; then
			read -p "- Previously saved output 'stealthscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/stealthscan.txt
				cp .stsc.txt outputs/$usrnm/scanning/$tar/stealthscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/stealthscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .stsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .stsc.txt outputs/$usrnm/scanning/$tar/stealthscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/stealthscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn3.txt
	rm -rf .scsc.txt
	scaneoop
}

	
intensescan() {	
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Scan --> Intense Scan"
	echo -e "- Scanning... Please wait"
	echo -e "- Selected Scan --> Intense Scan" >> .intsc.txt
	echo -e "\n- Scan Results --->\n" >> .intsc.txt
	nmap $od $sd $dr $t -A -v $tar -oN .nmapn4.txt
	cat .nmapn4.txt | sed 1d >> .intsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/intensescan.txt ]]; then
			read -p "- Previously saved output 'intensescan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/intensescan.txt
				cp .intsc.txt outputs/$usrnm/scanning/$tar/intensescan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/intensescan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .intsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .intsc.txt outputs/$usrnm/scanning/$tar/intensescan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/intensescan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn4.txt
	rm -rf .intsc.txt
	scaneoop
}

intenseudp() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Scan --> Intense Scan w/ UDP"
	echo -e "- Scanning... Please wait"
	echo -e "- Selected Scan --> Intense Scan w/ UDP" >> .intudpsc.txt
	echo -e "\n- Scan Results --->\n" >> .intudpsc.txt
	nmap $od $sd $dr $t $v -sS -sU -A $tar -oN .nmapn5.txt
	cat .nmapn5.txt | sed 1d >> .intudpsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/intenseudpscan.txt ]]; then
			read -p "- Previously saved output 'intenseudpscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/intenseudpscan.txt
				cp .intudpsc.txt outputs/$usrnm/scanning/$tar/intenseudpscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/intenseudpscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .intudpsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .intudpsc.txt outputs/$usrnm/scanning/$tar/intenseudpscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/intenseudpscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn5.txt
	rm -rf .intudpsc.txt
	scaneoop
}

intensenoping() {	
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Scan --> Intense Scan (no ping)"
	echo -e "- Scanning... Please wait"	
	echo -e "- Selected Scan --> Intense Scan (no ping)" >> .intnpsc.txt
	echo -e "\n- Scan Results --->\n" >> .intnpsc.txt
	nmap $od $sd $dr $t $v -A -Pn $tar -oN .nmapn6.txt
	cat .nmapn6.txt | sed 1d >> .intnpsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/intensenopingscan.txt ]]; then
			read -p "- Previously saved output 'intensenopingscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/intensenopingscan.txt
				cp .intnpsc.txt outputs/$usrnm/scanning/$tar/intensenopingscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/intensenopingscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .intnpsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .intnpsc.txt outputs/$usrnm/scanning/$tar/intensenopingscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/intensenopingscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn6.txt
	rm -rf .intnpsc.txt
	scaneoop
}

flagscan() {	
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo "**Press ctrl+c to show the Exit menu"
	trap "scaneoop" 2
	dir1000=outputs/$usrnm/scanning/$tar/FlagScans/
	if [[ ! -d $dir1000 ]]; then
		mkdir outputs/$usrnm/scanning/$tar/FlagScans/
	fi
	echo -e "\n- Selected Scan --> Flag Specific Scan"
	echo -e "\n- Available Scans: "
	echo "1. SYN scan"
	echo "2. ACK scan"
	echo "3. FIN Scan"
	echo "4. XMAS Scan"
	echo "5. NULL Scan"
	echo "6. Back"
	read -p "- Select a type of scan: " opt1
	until [[ $opt1 == 1 || $opt1 == 2 || $opt1 == 3 || $opt1 == 4 || $opt1 == 5 || $opt1 == 6 ]]
	do
		read -p "Invalid input. Please select correct option: " opt1
	done
	if [[ $opt1 == 1 ]]; then
		echo -e "\n- Selected Flag --> SYN Scan"
		echo -e "- Scanning... Please wait"	
		echo "- Selected Scan --> SYN Scan" >> .synsc.txt
		echo -e "\n- Scan Results --->\n" >> .synsc.txt
		nmap $od $sd $dr $v $t -sS $tar -oN .script1.txt
		cat .script1.txt | sed 1d >> .synsc.txt
		read -p $'\n'"Do you want to save the output? (y/n) " yn2
		until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
		do
			read -p "Invalid input. Select correct option: " yn2
		done
		if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
			if [[ -f outputs/$usrnm/scanning/$tar/FlagScans/SYNscan.txt ]]; then
				read -p "- Previously saved output 'SYNscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
				if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
					rm -rf outputs/$usrnm/scanning/$tar/FlagScans/SYNscan.txt
					cp .synsc.txt outputs/$usrnm/scanning/$tar/FlagScans/SYNscan.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/SYNscan.txt"
	
				else
					read -p "Save it under a different name? (y/n) (default: n) " ovr2
					if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
						read -p "Enter new name for the output file: " nnm1
						cp .synsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
						echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"
	
					else
						echo "Output not saved."
					fi
				fi
			else
				cp .synsc.txt outputs/$usrnm/scanning/$tar/FlagScans/SYNscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/SYNscan.txt"
			fi
		elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
			echo "- Output not saved."
		fi
		rm -rf .script1.txt
		rm -rf .synsc.txt
		read -p "- Run a scan with a different flag? (default: n)" yn5
		if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
			flagscan
		fi
		scaneoop
	elif [[ $opt1 == 2 ]]; then
		echo -e "\n- Selected Flag --> ACK Scan"
		echo -e "- Scanning... Please wait"	
		echo "- Selected Scan --> ACK Scan" >> .acksc.txt
		echo -e "\n- Scan Results --->\n" >> .acksc.txt
		nmap $od $sd $dr $v $t -sA $tar -oN .script2.txt
		cat .script2.txt | sed 1d >> .acksc.txt
		read -p $'\n'"Do you want to save the output? (y/n) " yn2
		until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
		do
			read -p "Invalid input. Select correct option: " yn2
		done
		if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
			if [[ -f outputs/$usrnm/scanning/$tar/FlagScans/ACKscan.txt ]]; then
				read -p "- Previously saved output 'ACKscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
				if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
					rm -rf outputs/$usrnm/scanning/$tar/FlagScans/ACKscan.txt
					cp .acksc.txt outputs/$usrnm/scanning/$tar/FlagScans/ACKscan.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/ACKscan.txt"
	
				else
					read -p "Save it under a different name? (y/n) (default: n) " ovr2
					if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
						read -p "Enter new name for the output file: " nnm1
						cp .acksc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
						echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"
	
					else
						echo "Output not saved."
					fi
				fi
			else
				cp .acksc.txt outputs/$usrnm/scanning/$tar/FlagScans/ACKscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/ACKscan.txt"
			fi
		elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
			echo "- Output not saved."
		fi
		rm -rf .script2.txt
		rm -rf .acksc.txt
		read -p "- Run a scan with a different flag? (default: n)" yn5
		if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
			flagscan
		fi
		scaneoop
	elif [[ $opt1 == 3 ]]; then
		echo -e "\n- Selected Flag --> FIN Scan"
		echo -e "- Scanning... Please wait"	
		echo "- Selected Scan --> FIN Scan" >> .finsc.txt
		echo -e "\n- Scan Results --->\n" >> .finsc.txt
		nmap $od $sd $dr $v $t -sF $tar -oN .script3.txt
		cat .script3.txt | sed 1d >> .finsc.txt
		read -p $'\n'"Do you want to save the output? (y/n) " yn2
		until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
		do
			read -p "Invalid input. Select correct option: " yn2
		done
		if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
			if [[ -f outputs/$usrnm/scanning/$tar/FlagScans/FINscan.txt ]]; then
				read -p "- Previously saved output 'FINscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
				if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
					rm -rf outputs/$usrnm/scanning/$tar/FlagScans/FINscan.txt
					cp .finsc.txt outputs/$usrnm/scanning/$tar/FlagScans/FINscan.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/FINscan.txt"
	
				else
					read -p "Save it under a different name? (y/n) (default: n) " ovr2
					if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
						read -p "Enter new name for the output file: " nnm1
						cp .finsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
						echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"
	
					else
						echo "Output not saved."
					fi
				fi
			else
				cp .finsc.txt outputs/$usrnm/scanning/$tar/FlagScans/FINscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/FINscan.txt"
			fi
		elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
			echo "- Output not saved."
		fi
		rm -rf .script3.txt
		rm -rf .finsc.txt
		read -p "- Run a scan with a different flag? (default: n)" yn5
		if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
			flagscan
		fi
		scaneoop
	elif [[ $opt1 == 4 ]]; then
		echo -e "\n- Selected Flag --> XMAS Scan"
		echo -e "- Scanning... Please wait"	
		echo "- Selected Scan --> XMAS Scan" >> .xmassc.txt
		echo -e "\n- Scan Results --->\n" >> .xmassc.txt
		nmap $od $sd $dr $v $t -sS $tar -oN .script4.txt
		cat .script4.txt | sed 1d >> .xmassc.txt
		read -p $'\n'"Do you want to save the output? (y/n) " yn2
		until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
		do
			read -p "Invalid input. Select correct option: " yn2
		done
		if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
			if [[ -f outputs/$usrnm/scanning/$tar/FlagScans/XMASscan.txt ]]; then
				read -p "- Previously saved output 'XMASscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
				if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
					rm -rf outputs/$usrnm/scanning/$tar/FlagScans/XMASscan.txt
					cp .xmassc.txt outputs/$usrnm/scanning/$tar/FlagScans/XMASscan.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/XMASscan.txt"
	
				else
					read -p "Save it under a different name? (y/n) (default: n) " ovr2
					if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
						read -p "Enter new name for the output file: " nnm1
						cp .xmassc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
						echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"
	
					else
						echo "Output not saved."
					fi
				fi
			else
				cp .xmassc.txt outputs/$usrnm/scanning/$tar/FlagScans/XMASscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/XMASscan.txt"
			fi
		elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
			echo "- Output not saved."
		fi
		rm -rf .script4.txt
		rm -rf .xmassc.txt
		read -p "- Run a scan with a different flag? (default: n)" yn5
		if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
			flagscan
		fi
		scaneoop
	elif [[ $opt1 == 5 ]]; then
		echo -e "\n- Selected Flag --> NULL Scan"
		echo -e "- Scanning... Please wait"	
		echo "- Selected Scan --> NULL Scan" >> .nullsc.txt
		echo -e "\n- Scan Results --->\n" >> .nullsc.txt
		nmap $od $sd $dr $v $t -sS $tar -oN .script5.txt
		cat .script5.txt | sed 1d >> .nullsc.txt
		read -p $'\n'"Do you want to save the output? (y/n) " yn2
		until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
		do
			read -p "Invalid input. Select correct option: " yn2
		done
		if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
			if [[ -f outputs/$usrnm/scanning/$tar/FlagScans/NULLscan.txt ]]; then
				read -p "- Previously saved output 'NULLscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
				if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
					rm -rf outputs/$usrnm/scanning/$tar/FlagScans/NULLscan.txt
					cp .nullsc.txt outputs/$usrnm/scanning/$tar/FlagScans/NULLscan.txt
					echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/NULLscan.txt"
	
				else
					read -p "Save it under a different name? (y/n) (default: n) " ovr2
					if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
						read -p "Enter new name for the output file: " nnm1
						cp .nullsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
						echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/$nnm1"
	
					else
						echo "Output not saved."
					fi
				fi
			else
				cp .nullsc.txt outputs/$usrnm/scanning/$tar/FlagScans/NULLscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/FlagScans/NULLscan.txt"
			fi
		elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
			echo "- Output not saved."
		fi
		rm -rf .script5.txt
		rm -rf .nullsc.txt
		read -p "- Run a scan with a different flag? (default: n)" yn5
		if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
			flagscan
		fi
		scaneoop
	elif [[ $opt1 == 6 ]]; then
		scanning
	fi
}
	
windowscan() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Scan --> Window Scan"
	echo -e "- Scanning... Please wait"
	echo -e "- Selected Scan --> Window Scan" >> .winsc.txt
	echo -e "\n- Scan Results --->\n" >> .winsc.txt
	nmap $od $sd $dr $v $t -sW $tar -oN .nmapn7.txt
	cat .nmapn7.txt | sed 1d >> .winsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
	until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/windowscan.txt ]]; then
			read -p "- Previously saved output 'windowscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/windowscan.txt
				cp .winsc.txt outputs/$usrnm/scanning/$tar/windowscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/windowscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .winsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scannin/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .winsc.txt outputs/$usrnm/scanning/$tar/windowscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/windowscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn7.txt
	rm -rf .winsc.txt
	scaneoop
}

maimonscan() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Scan --> Window Scan"
	echo -e "- Scanning... Please wait"
	echo -e "- Selected Scan --> Maimon Scan" >> .maimsc.txt
	echo -e "\n- Scan Results --->\n" >> .maimsc.txt
	nmap $od $sd $dr $v $t -sM $tar -oN .nmapn8.txt
	cat .nmapn8.txt | sed 1d >> .maimsc.txt
	read -p $'\n'"Do you want to save the output? (y/n) " yn2
		until [[ $yn2 == "y" || $yn2 == "Y" || $yn2 == "n" || $yn2 == "N" ]]
	do
		read -p "Invalid input. Select correct option: " yn2
	done
	if [[ $yn2 == "y" || $yn2 == "Y" ]]; then
		if [[ -f outputs/$usrnm/scanning/$tar/maimonscan.txt ]]; then
			read -p "- Previously saved output 'maimonscan.txt' exists. Do you want to overwrite? (default: n) " ovr1
			if [[ $ovr1 == "y" || $ovr1 == "Y" ]]; then
				rm -rf outputs/$usrnm/scanning/$tar/maimonscan.txt
				cp .maimsc.txt outputs/$usrnm/scanning/$tar/maimonscan.txt
				echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/maimonscan.txt"

			else
				read -p "Save it under a different name? (y/n) (default: n) " ovr2
				if [[ $ovr2 == "y" || $ovr2 == "Y" ]]; then
					read -p "Enter new name for the output file: " nnm1
					cp .maimsc.txt outputs/$usrnm/scanning/$tar/$nnm1.txt
					echo "- Output successfully saved in outputs/$usrnm/scannin/$tar/$nnm1"

				else
					echo "Output not saved."
				fi
			fi
		else
			cp .maimsc.txt outputs/$usrnm/scanning/$tar/maimonscan.txt
			echo "- Output successfully saved in outputs/$usrnm/scanning/$tar/maimonscan.txt"
		fi
	elif [[ $yn2 == "n" || $yn2 == "N" ]]; then
		echo "- Output not saved."
	fi
	rm -rf .nmapn8.txt
	rm -rf .maimsc.txt
	scaneoop
}

defaultscript() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option --> Nmap Scripting Engine"
	echo "- Selected Script --> Default"
	echo -e "- Scanning... Please wait"
	echo ""
	nmap $od $sd $dr $v $t -sC $tar -oN .nmapn
	echo -e "\n- Scan Results --->\n"
	rm -rf .nmapn
	read -p "- Run a different script? (default n)" yn6
	if [[ $yn6 == "y" || $yn56 == "Y" ]]; then
		scripting
	fi
	echo ""
	scaneoop
}

bannerscript() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option --> Nmap Scripting Engine"
	echo "- Selected Script --> Banners"
	echo -e "- Scanning... Please wait"
	echo ""
	nmap $od $sd $dr $v $t --script banner $tar -oN .nmapm
	echo -e "\n- Scan Results --->\n"
#	cat .nmapn | head -n -1 | tail -n +2
	rm -rf nmapn
	read -p "- Run a different script? (default n)" yn6
	if [[ $yn6 == "y" || $yn56 == "Y" ]]; then
		scripting
	fi
	echo ""
	scaneoop
}

dnsscript() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option  --> Nmap Scripting Engine"
	echo "- Selected Service --> dns"
	echo -e "\n- Available Scripts:"
	echo "1. dns Brute"
	echo "2. dns Server Enumeration"
	echo "3. dns Zone Transfer"
	echo "4. Back"
	read -p "- What script do you want to run? " sc2
	until [[ $sc2 == 1 || $sc2 == 2 || $sc2 == 3 ]]
	do
		read -p "Invalid input. Please select correct option: " sc2
	done
	case $sc2 in
		1) nmap $od $sd $dr $v $t --script dns-brute $tar -oN .nmapn >/dev/null;;
		2) nmap $od $sd $dr $v $t --script dns-srv-enum $tar -oN .nmapn >/dev/null;;
		3) nmap $od $sd $dr $v $t --script dns-zone-transfer $tar -oN .nmapn >/dev/null;;
		4) scripting ;;
	esac
	echo -e "\n- Scan Results --->\n"
	cat .nmapn | head -n -1 | tail -n +2
	rm -rf .nmapn
	echo ""
	read -p "- Run a scan with a different Script? (default: n)" yn5
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		dnsscript
	fi
	read -p "- Run a scan with a script for a different service? (default n): "yn6
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		scripting
	fi
	echo ""
	scaneoop
}

ftpscript() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option  --> Nmap Scripting Engine"
	echo "- Selected Service --> ftp"
	echo -e "\n- Available Scripts:"
	echo "1. ftp Anonymous Login Check"
	echo "2. ftp Brute"
	echo "3. vsftpd Backdoor Check"
	echo "4. Back"
	read -p "- What script do you want to run? " sc3
	until [[ $sc3 == 1 || $sc3 == 2 || $sc3 == 3 || $sc3 == 4 ]]
	do
		read -p "Invalid input. Please select correct option: " sc3
	done
	case $sc3 in
		1) nmap $od $sd $dr $v $t --script ftp-anon $tar -oN .nmapn >/dev/null;;
		2) nmap $od $sd $dr $v $t --script ftp-brute $tar -oN .nmapn >/dev/null;;
		3) nmap $od $sd $dr $v $t --script ftp-vsftpd-backdoor $tar -oN .nmapn >/dev/null;;
		4) scripting ;;
	esac
	echo -e "\n- Scan Results --->\n"
	cat .nmapn | head -n -1 | tail -n +2
	rm -rf .nmapn
	echo ""
	read -p "- Run a scan with a different Script? (default: n)" yn6
	if [[ $yn6 == "y" || $yn6 == "Y" ]]; then
		ftpscript
	fi
	read -p "- Run a scan with a script for a different service? (default n): "yn6
	if [[ $yn6 == "y" || $yn6 == "Y" ]]; then
		scripting
	fi
	echo ""
	scaneoop
}

httpscript() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option  --> Nmap Scripting Engine"
	echo "- Selected Service --> http"
	echo -e "\n- Available Scripts:"
	echo "1. http Method Check (Auth Finder)"
	echo "2. http Backup Finder"
	echo "3. http Brute"
	echo "4. http Enum"
	echo "5. http Headers"
	echo "6. robots.txt Check"
	echo "7. Back"
	read -p "- What script do you want to run? " sc3
		until [[ $sc3 == 1 || $sc3 == 2 || $sc3 == 3 || $sc3 == 4 || $sc3 == 5 || $sc3 == 6 || $sc3 == 7 ]]
	do
		read -p "Invalid input. Please select correct option: " sc3
	done
	case $sc3 in
		1) nmap $od $sd $dr $v $t --script http-auth-finder $tar -oN .nmapn >/dev/null;;
		2) nmap $od $sd $dr $v $t --script http-backup-finder $tar -oN .nmapn >/dev/null;;
		3) nmap $od $sd $dr $v $t --script http-brute $tar -oN .nmapn >/dev/null;;
		4) nmap $od $sd $dr $v $t --script http-enum $tar -oN .nmapn >/dev/null;;
		5) nmap $od $sd $dr $v $t --script http-headers $tar -oN .nmapn >/dev/null;;
		6) nmap $od $sd $dr $v $t --script http-robots.txt $tar -oN .nmapn >/dev/null;;
		7) scripting ;;
	esac
	echo -e "\n- Scan Results --->\n"
	cat .nmapn | head -n -1 | tail -n +2
	rm -rf .nmapn
	echo ""
	read -p "- Run a scan with a different Script? (default: n)" yn5
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		httpscript
	fi
	read -p "- Run a scan with a script for a different service? (default n): "yn6
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		scripting
	fi
	echo ""
}

smbscan() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option  --> Nmap Scripting Engine"
	echo "- Selected Service --> smb"
	echo -e "\n- Available Scripts:"
	echo "1. smb Brute"
	echo "2. smb Domain Enumeration"
	echo "3. smb Groups Enumeration"
	echo "4. smb Processes Enumeration"
	echo "5. smb Services Enumeration"
	echo "6. smb Users Enumeration"
	echo "7. smb OS Discovery"
	echo "8. Back"
	read -p "- What script do you want to run? " sc3
	until [[ $sc3 == 1 || $sc3 == 2 || $sc3 == 3 || $sc3 == 4 || $sc3 == 5 || $sc3 == 6 || $sc3 == 7 || $sc3 == 8 ]]
	do
		read -p "Invalid input. Please select correct option: " sc3
	done
	case $sc3 in
		1) nmap $od $sd $dr $v $t --script smb-brute $tar -oN .nmapn >/dev/null;;
		2) nmap $od $sd $dr $v $t --script smb-enum-domains $tar -oN .nmapn >/dev/null;;
		3) nmap $od $sd $dr $v $t --script smb-enum-groups $tar -oN .nmapn >/dev/null;;
		4) nmap $od $sd $dr $v $t --script smb-enum-processes $tar -oN .nmapn >/dev/null;;
		5) nmap $od $sd $dr $v $t --script smb-enum-services $tar -oN .nmapn >/dev/null;;
		6) nmap $od $sd $dr $v $t --script smb-enum-users $tar -oN .nmapn >/dev/null;;
		7) nmap $od $sd $dr $v $t --script smb-os-discovery $tar -oN .nmapn >/dev/null;;
		8) scripting ;;
	esac
	echo -e "\n- Scan Results --->\n"
	cat .nmapn | head -n -1 | tail -n +2
	rm -rf .nmapn
	echo ""
	read -p "- Run a scan with a different Script? (default: n)" yn5
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		smbscript
	fi
	read -p "- Run a scan with a script for a different service? (default n): "yn6
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		scripting
	fi
	echo ""
}

sslscript() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option  --> Nmap Scripting Engine"
	echo "- Selected Service --> ssl"
	echo -e "\n- Available Scripts:"
	echo "1. Retrieve ssl Certificate"
	echo "2. ssl Heartbleed Check"
	echo "3. ssl Poodle Check"
	echo "4. smb Drown Check"
	echo "5. Back"
	read -p "- What script do you want to run? " sc3
	until [[ $sc3 == 1 || $sc3 == 2 || $sc3 == 3 || $sc3 == 4 || $sc3 == 5 ]]
	do
		read -p "Invalid input. Please select correct option: " sc3
	done
	case $sc3 in
		1) nmap $od $sd $dr $v $t --script ssl-cert $tar -oN .nmapn >/dev/null;;
		2) nmap $od $sd $dr $v $t --script ssl-heartbleed $tar -oN .nmapn >/dev/null;;
		3) nmap $od $sd $dr $v $t --script ssl-poodle $tar -oN .nmapn >/dev/null;;
		4) nmap $od $sd $dr $v $t --script sslv2-drown $tar -oN .nmapn >/dev/null;;
		5) scripting ;;
	esac
	echo -e "\n- Scan Results --->\n"
	cat .nmapn | head -n -1 | tail -n +2
	rm -rf .nmapn
	echo ""
	read -p "- Run a scan with a different Script? (default: n)" yn5
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		sslscript
	fi
	read -p "- Run a scan with a script for a different service? (default n): "yn6
	if [[ $yn5 == "y" || $yn5 == "Y" ]]; then
		scripting
	fi
	echo ""
}

sshscript() {
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option --> Nmap Scripting Engine"
	echo "- Selected Script --> ssh Brute"
	echo ""
	nmap $od $sd $dr $v $t --script ssh-brute $tar -oN .nmapn >/dev/null
	echo -e "\n- Scan Results --->\n"
	cat .nmapn | head -n -1 | tail -n +2
	rm -rf .nmapn
	read -p "- Run a different script? (default n)" yn6
	if [[ $yn6 == "y" || $yn56 == "Y" ]]; then
		scripting
	fi
	echo ""
	scaneoop
}

scripting() {
	deltempfiles
	clear
	banner
	echo -e "\n------------ SCANNING -------------"
	echo -e "\n Target IP Address: $ipaddr"
	echo -e " Target Domain Name: $domname"
	echo "------------------------------------------"
	echo -e "\n- Selected Option --> Nmap Scripting Engine"
	echo -e "\n- Available Scripts: "
	echo "1. Default"
	echo "2. Banners"
	echo "3. dns"
	echo "4. ftp"
	echo "5. http"
	echo "6. smb"
	echo "7. ssh Brute"
	echo "8. ssl"
	echo "9. Back"
	read -p "- What script do you want to run? " sc1
	until [[ $sc1 == 1 || $sc1 == 2 || $sc1 == 3 || $sc1 == 4 || $sc1 == 5 || $sc1 == 6 || $sc1 == 7 || $sc1 == 8 || $sc1 == 9 ]]
	do
		read -p "Invalid input. Please select correct option: " sc1
	done
	case $sc1 in
		1) defaultscript ;;
		2) bannerscript ;;
		3) dnsscript ;;
		4) ftpscript ;;
		5) httpscript ;;
		6) smbscript ;;
		7) sshscript ;;
		8) sslscript ;;
		9) scanning ;;
	esac
	echo -e "\n- Scan Results --->\n"
	cat nmapn | head -n -1 | tail -n +2
	rm -rf nmapn
	echo ""
	scaneoop
}


mainmenu() {
	deltempfiles
	clear
	banner
	echo "----- RUNNING THE FRAMEWORK ------"
	echo ""
	echo "Following options are available:"
	echo ""
	echo "1. Footprinting"
	echo "2. Scanning"
	echo "3. Exploit (Coming soon)"
	echo "4. Run Wireshark (GUI)"
	echo "5. Shodan (Coming Soon)"
	echo -e "\n6. Delete all your saved outputs"
	echo "7. Logout"
	echo "8. Exit"
	echo ""
	read -p "Select an option: " sc1
	until [[ $sc1 == 1 || $sc1 == 2 || $sc1 == 3 || $sc1 == 4 || $sc1 == 5 || $sc1 == 6 || $sc1 == 7 ]]
	do
		read -p "Invalid input. Please select correct option: " sc1
	done
	while [[ $sc1 == 3 || $sc1 == 5 ]]
	do
		echo -e "\n- This section is under construction. Come back later."
		read -p "- Please select another option: " sc1
	done
	case $sc1 in
		1) footprint ;;
		2) scaninput ;;
		3) echo "Exploits coming soon :)" ;;
		5) 
			rm -rf outputs/$usrnm 
			echo "Outputs for $usrnm successfully deleted."
			sleep 2
			mainmenu
			;;
		4) 
			wireshark & disown
			mainmenu;;
		6) login ;;
		7) exit ;;			
	esac
}

login() {
	clear
	banner
	echo ""
	echo ""
	file=.accounts
	if [[ ! -f "$file" ]]; then
		touch .accounts
	fi
	echo "- - - - - - WELCOME!!! - - - - - -"
	echo -e "\n- To use the Framework:"
	echo "1. Login"
	echo "2. Signup"
	echo "3. Delete an account"
	echo "4. List all the registered usernames"
	read -p $'\n'"Do you want to login or signup? (1-4) " enter
	if [[ $enter == 1 ]]; then
		read -p $'\n'"- Enter username: " usrnm
		if [[ $usrnm == $(cat .accounts | grep -w "$usrnm" | cut -d ":" -f 1) ]]; then
			read -s -p "- Enter Password: " pswrd
			until [[ $pswrd == $(cat .accounts | grep -w "$usrnm" | cut -d ":" -f 2) ]]
			do
				echo -e "\n- Sorry wrong password."
			        read -s -p "Enter again: " pswrd
			done
			echo -e "\n- Logging you in..."
			echo -e "\n- Welcome back $name"
			dir=outputs
			if [[ ! -d $dir ]]; then
				mkdir outputs
			fi
			dir1=outputs/$usrnm/
			if [[ ! -d $dir1 ]]; then
				mkdir outputs/$usrnm/
			fi
			sleep 1
			mainmenu
		fi
		echo -e "\n The username does not exist."
		read -p "Do you want to create one? (y/n) " yn10
		if [[ $yn10 == "y" || $yn10 == "Y" ]]; then
			signup
		else
			echo "Exiting..."
			sleep 3
			exit
		fi
	elif [[ $enter == 2 ]]; then
		signup
	elif [[ $enter == 3 ]]; then
		read -p $'\n'"Enter the username you want to delete: " usrnm1
		if [[ $usrnm1 == $(cat .accounts | grep -w "$usrnm1" | cut -d ":" -f 1) ]]; then
			read -s -p $'\n'"- Enter Password: " pswrd1
			until [[ $pswrd1 == $(cat .accounts | grep -w "$usrnm1" | cut -d ":" -f 2) ]]
			do
				echo -e "\n- Sorry wrong password."
			        read -s -p "Enter again: " pswrd1
			done
			echo -e "\n- Deleting the account with username $usrnm1"
			read -p $'\n'"This will delete all the saved files. Continue? (y/n) " yn100
			if [[ $yn100 == "y" || $yn100 == "Y" ]]; then
				sed -i '/^'$usrnm1'/d' .accounts
				rm -rf outputs/$usrnm
				echo "Account Successfully Deleted."
				read -n 1 -s -r -p $'\n'"Press anywhere to continue"
				login
			else
				echo "aborting..."
				sleep 2
				login
			fi
		else
			echo "The username does not exist."
			read -n 1 -s -r -p $'\n'"Press anywhere to continue"
			login
		fi
	elif [[ $enter == 4 ]]; then
		echo ""
		echo "Registered usernames are: "
		cat .accounts | cut -d ":" -f 1
		read -n 1 -s -r -p $'\n'"Press any key to continue"
		login
	else
		echo -e "\n- Enter a correct choice."
		sleep 2
		login
		exit
	fi
}

signup() {
	clear
	banner
	echo "- - - - - - WELCOME!!! - - - - - -"
	echo -e "\nEnter your information to Signup -->"
	read -p "- Enter username: " usrnm
	echo "Checking availability..."
	until [[ $usrnm != $(cat .accounts | grep -w "$usrnm" | cut -d ":" -f 1) ]]
	do
		read -p "The username already exists. Enter another username: " usrnm
#		continue
	done
	echo "Username created."
	read -s -p "- Enter password: " pswrd
	echo "$usrnm:$pswrd" >> .accounts
	echo -e "\n- Account Successfully created! Login using the new account."
	dir=outputs
	if [[ ! -d $dir ]]; then
		mkdir outputs
	fi
	dir1=outputs/$usrnm/
	if [[ ! -d $dir1 ]]; then
		mkdir outputs/$usrnm
	fi
	read -n 1 -s -r -p "Press any key to continue"
	login
}

login
