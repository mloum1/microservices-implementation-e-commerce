#liste des ports
ports=(5432 5050 9411 27017 8081 2181 9092 1080 1025 22181)


for port in "${ports[@]}"; do
    pid=$(sudo lsof -t -i:"$port")
    if [ -n "$pid" ]; then
        echo "Arrêt des processus sur le port $port (PID: $pid)..."
        sudo kill -9 $pid
    fi
done

echo "Tu peux lancer docker safely bro :;"
docker-compose up -d 