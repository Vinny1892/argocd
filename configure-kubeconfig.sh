#!/bin/bash

# Variáveis de conexão SSH e caminhos de arquivos
VM_USER="vagrant"          # Substitua com o nome do usuário da VM
VM_IP="192.168.100.220"              # Substitua com o IP da VM
SOURCE_FILE="/etc/rancher/k3s/k3s.yaml"
DEST_FILE="/home/vinny/repo/kubeconfigs/k3s-virtual-box.yml"
PASSWORD="vagrant"     # Substitua com a senha da VM

# Caminho local do destino
LOCAL_DEST_FILE="/home/vinny/repo/kubeconfigs/k3s-virtual-box.yml"

# Copia o arquivo da VM para o local especificado
sshpass -p "$PASSWORD" scp "$VM_USER@$VM_IP:$SOURCE_FILE" "$LOCAL_DEST_FILE"

# Verifica se a cópia foi bem-sucedida
if [[ $? -eq 0 ]]; then
    echo "Arquivo copiado com sucesso de $VM_USER@$VM_IP:$SOURCE_FILE para $LOCAL_DEST_FILE"

    # Ajusta permissões do arquivo no destino
    chmod 600 "$LOCAL_DEST_FILE"
    echo "Permissões ajustadas para 600 no arquivo de destino."
else
    echo "Erro ao copiar o arquivo."
    exit 1
fi
