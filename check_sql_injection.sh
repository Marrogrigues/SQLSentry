#!/bin/bash

# Definir o arquivo de log para analisar
LOGFILE="/var/log/apache2/access.log"

# Verificar se o arquivo de log existe
if [ ! -f "$LOGFILE" ]; then
  echo "Arquivo de log $LOGFILE não encontrado."
  exit 1
fi

# Procurar por padrões comuns de SQL Injection no arquivo de log
grep -Ei "(\%27)|(\')|(\-\-)|(\%23)|(#)|(\%3D)|(=)|(\%7C)|(\|)" $LOGFILE > /tmp/sql_injection_attempts.txt

# Verificar se encontramos tentativas de SQL Injection
if [ -s /tmp/sql_injection_attempts.txt ]; then
  echo "Possíveis tentativas de SQL Injection encontradas:"
  cat /tmp/sql_injection_attempts.txt
else
  echo "Nenhuma tentativa de SQL Injection encontrada."
fi

# Remover o arquivo temporário
rm /tmp/sql_injection_attempts.txt
