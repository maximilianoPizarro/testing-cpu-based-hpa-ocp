#!/bin/bash

# Configuraciones
APP_URL=http://dotnet-sample:8080/Home/Privacy           # URL de la app
PARALLEL_REQUESTS=20 # Cantidad de curl corriendo en paralelo
TOTAL_LOOPS=100       # Cuántas veces repetir la oleada de solicitudes

if [ -z "$APP_URL" ]; then
  echo "Uso: $0 <URL-de-la-app>"
  exit 1
fi

echo "🔥 Iniciando prueba de estrés contra $APP_URL ..."
echo "🔁 $TOTAL_LOOPS ciclos, $PARALLEL_REQUESTS peticiones por ciclo"

for i in $(seq 1 $TOTAL_LOOPS); do
  echo "Ciclo $i..."
  for j in $(seq 1 $PARALLEL_REQUESTS); do
    curl -s "$APP_URL" > /dev/null &
  done
  wait
done

echo "✅ Prueba finalizada. Verifica el HPA con:"
echo "   oc get hpa"
oc get hpa