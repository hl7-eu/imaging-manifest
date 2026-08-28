#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/

if [ -n "${TX_URL:-}" ]; then
	echo "Using local terminology server: $TX_URL"
	txoption="-tx $TX_URL"
	settingsoption="-fhir-settings ../fhir-settings.json"
else
	echo Checking internet connection...
	settingsoption=""
	curl -sSf tx.fhir.org > /dev/null

	if [ $? -eq 0 ]; then
		echo "Online"
		txoption=""
	else
		echo "Offline"
		txoption="-tx n/a"
	fi
fi

echo "$txoption"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $settingsoption $txoption $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $settingsoption $txoption $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi
