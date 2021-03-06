#!/usr/bin/env bash

get_sas_token() {
    local EVENTHUB_URI="timwehn345454345.servicebus.windows.net/timwehn345454345"
    local SHARED_ACCESS_KEY_NAME="diagnostics"
    local SHARED_ACCESS_KEY="PRIMARY OR SECONDARY KEY"
    local EXPIRY=${EXPIRY:=$((60 * 60 * 24))} # Default token expiry is 1 day. *** increase to something longer ***

    local ENCODED_URI=$(echo -n $EVENTHUB_URI | jq -s -R -r @uri)
    local TTL=$(($(date +%s) + $EXPIRY))
    local UTF8_SIGNATURE=$(printf "%s\n%s" $ENCODED_URI $TTL | iconv -t utf8)

    local HASH=$(echo -n "$UTF8_SIGNATURE" | openssl sha256 -hmac $SHARED_ACCESS_KEY -binary | base64)
    local ENCODED_HASH=$(echo -n $HASH | jq -s -R -r @uri)

    #echo -n "SharedAccessSignature sr=$ENCODED_URI&sig=$ENCODED_HASH&se=$TTL&skn=$SHARED_ACCESS_KEY_NAME"

    local sas="https://$EVENTHUB_URI?sr=$ENCODED_URI&sig=$ENCODED_HASH&se=$TTL&skn=$SHARED_ACCESS_KEY_NAME"
    echo $sas
}

get_sas_token
