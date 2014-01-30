#!/bin/sh

usage()
{
cat << EOF
usage: $0 options

This script creates pem file for APNS from the private key (.p12) and certificate (.cer).

EXAMPLE:
  mknoce.sh -k ~/certs/DevelopmentCertificates.p12 -c ~/certs/aps_development.cer -o MyPusDev.pem

OPTIONS:
  -h Show help message
  -k Path to private key (.p12)
  -c Path to certificate (.cer)
  -o Output filename

EOF
}

CER=
KEY=
OUT=

while getopts “hk:c:o:” OPTION
do
     case $OPTION in
         h)
             usage
             exit 1
             ;;
         k)
             KEY=$OPTARG
             ;;
         c)
             CER=$OPTARG
             ;;
         o)
             OUT=$OPTARG
             ;;
         ?)
             usage
             exit
             ;;
     esac
done

if [[ -z $KEY ]] || [[ -z $CER ]] || [[ -z $OUT ]]
then
     usage
     exit 1
fi

echo "\nCreating pem files...\n"
openssl x509 -in $CER -inform der -out ${OUT}Cer.pem
openssl pkcs12 -nocerts -out ${OUT}Key.pem -in $KEY
cat ${OUT}Cer.pem ${OUT}Key.pem > ${OUT}.pem
rm ${OUT}Cer.pem
rm ${OUT}Key.pem
echo "\n\n...done\n"


