
#!/bin/bash

# data e hora atual
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')

# nome do servico
SERVICO="nginx"

# caminho para os arquivos de logs
DIRETORIO_LOG="/home/lucas/scripts/logs"

# cria o diretorio de logs, se não existir
mkdir -p $DIRETORIO_LOG

# caminho completo para o comando systemctl
SYSTEMCTL="/bin/systemctl"  # ou /usr/bin/systemctl

# verifica o status do servico usando systemctl
STATUS=$($SYSTEMCTL status $SERVICO | grep "Active:")

# verifica se o servico esta ativo ou não
if echo "$STATUS" | grep -q "active"; then
    # se o servico estiver online, registra o status no arquivo online.log e exibe mensagem
    echo "$DATA_HORA - Serviço $SERVICO está ONLINE" >> $DIRETORIO_LOG/online.log
else
    # se o servico estiver offline, registra o status no arquivo offline.log e exibe mensagem
    echo "$DATA_HORA - Serviço $SERVICO está OFFLINE" >> $DIRETORIO_LOG/offline.log
fi

