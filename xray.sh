#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d302a9b7-83b8-42ff-9bdf-74059c926739"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

