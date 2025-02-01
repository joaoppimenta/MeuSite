#!/bin/bash
# Exemplo de script para validar se a aplicação está funcionando corretamente
echo "Verificando se a aplicação está respondendo..."
curl -f http://localhost:80 || exit 1
echo "Serviço funcionando!"
