# MkNoCe

## Overview

**mknoce.sh** - Make notification's certificate. 

Use this script to create Apple Push Notification Server certificates.

### Example

	~$ ./mknoce.sh -k ~/certs/DevelopmentCertificates.p12 -c ~/certs/aps_development.cer -o MyPushDev

Will generate MyPushDev.pem file on the current directory

### Usage

	This script creates pem file for APNS from the private key (.p12) and certificate (.cer).

	EXAMPLE:
	  mknoce.sh -k ~/certs/DevelopmentCertificates.p12 -c ~/certs/aps_development.cer -o MyPusDev.pem

	OPTIONS:
	  -h Show help message
	  -k Path to private key (.p12)
	  -c Path to certificate (.cer)
	  -o Output filename
