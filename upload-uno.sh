PORT_NAME=$1

if [ ! $PORT_NAME ]; then
  PORT_NAME="/dev/ttyUSB0"
fi

echo "Port: $PORT_NAME"

sh inject-board-type.sh "uno" && \

pio run -s --target upload --environment=uno --upload-port=$PORT_NAME || exit 1

echo "Upload complete"
