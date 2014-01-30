# MkNoCe

## Overview

**mknoce.sh** - Make notification's certificate. 

Use this script to create certificate file for the Apple Push Notification Service.

### Example

	~$ ./mknoce.sh -k ~/certs/DevelopmentCertificates.p12 -c ~/	certs/aps_development.cer -o MyPushDev

Will generate the file MyPushDev.pem on the current directory

### Usage

	This script creates pem file for APNS from the private key (.p12) and certificate (.cer).

	EXAMPLE:
	  mknoce.sh -k ~/certs/DevelopmentCertificates.p12 -c ~/certs/aps_development.cer -o MyPusDev.pem

	OPTIONS:
	  -h Show help message
	  -k Path to private key (.p12)
	  -c Path to certificate (.cer)
	  -o Output filename