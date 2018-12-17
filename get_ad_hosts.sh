#!/bin/sh
wget https://adaway.org/hosts.txt -O hosts_tmp.txt
cat hosts_tmp.txt | grep -E '^[0-9.]+' | sed 's/[0-9.]*\s*//' > hosts.txt

wget https://hosts-file.net/ad_servers.txt -O hosts_tmp.txt
cat hosts_tmp.txt | grep -E '^[0-9.]+' | sed 's/[0-9.]*\s*//' >> hosts.txt

wget 'https://pgl.yoyo.org/as/serverlist.php?showintro=0;hostformat=hosts' -O hosts_tmp.txt
cat hosts_tmp.txt | grep -E '^[0-9.]+' | sed 's/[0-9.]*\s*//' >> hosts.txt

wget https://raw.githubusercontent.com/quidsup/notrack/master/trackers.txt -O hosts_tmp.txt
cat hosts_tmp.txt | sed 's/\s*#.*$//' >> hosts.txt
rm hosts_tmp.txt

cat hosts.txt | sort | uniq > hosts2.txt
mv hosts2.txt hosts.txt

echo "powerlinks.com" >> hosts.txt
echo "adactive.cz" >> hosts.txt
echo "a.blesk.cz" >> hosts.txt
echo "a.denik.cz" >> hosts.txt
echo "a.centrum.cz" >> hosts.txt
echo "ia.idnes.cz" >> hosts.txt
echo "mobileadtrading.com" >> hosts.txt
echo "blismedia.com" >> hosts.txt
echo "agkn.com" >> hosts.txt
echo "mookie1.com" >> hosts.txt
echo "mookie1.com" >> hosts.txt
echo "m6r.eu" >> hosts.txt
echo "adform.net" >> hosts.txt
echo "im9.cz" >> hosts.txt
echo "1gr.cz" >> hosts.txt
echo "im.cz" >> hosts.txt
echo "i0.cz" >> hosts.txt
echo "imedia.cz" >> hosts.txt
echo "bbelements.com" >> hosts.txt
echo "imrworldwide.com" >> hosts.txt
echo "krxd.net" >> hosts.txt
echo "trustx.org" >> hosts.txt
echo "splicky.com" >> hosts.txt
echo "ipredictive.com" >> hosts.txt
echo "stackadapt.com" >> hosts.txt
echo "metadsp.co.uk" >> hosts.txt
echo "gscontxt.net" >> hosts.txt
echo "bluekai.com" >> hosts.txt
echo "pagefair.com" >> hosts.txt
echo "rubiconproject.com" >> hosts.txt
echo "scorecardresearch.com" >> hosts.txt
echo "exponea.com" >> hosts.txt
echo "acxiomapac.com" >> hosts.txt
echo "ads.eoit.cz" >> hosts.txt
echo "seadform.net" >> hosts.txt
echo "bumlam.com" >> hosts.txt
echo "aim.yahoo.com" >> hosts.txt
echo "marketing.adobe.com" >> hosts.txt
echo "v12group.com" >> hosts.txt
echo "digitru.st" >> hosts.txt
echo "audrte.com" >> hosts.txt
echo "angsrvr.com" >> hosts.txt
echo "tvpagecdn.com" >> hosts.txt
echo "cwkuki.com" >> hosts.txt
python dedup_domains.py hosts.txt > hosts2.txt
sort -o ads.txt hosts2.txt
rm hosts.txt
