# SQLSentry: O Guardião dos Logs Apache

Este repositório contém um script de shell para analisar logs do servidor web Apache, buscando por possíveis tentativas de ataque de SQL Injection. O script usa expressões regulares para identificar padrões suspeitos nos logs e exibe as linhas que podem indicar uma tentativa de ataque.

🔒 Aviso de Segurança: Este script serve como uma ferramenta auxiliar na detecção de tentativas de SQL Injection. No entanto, ele não é uma solução completa para a segurança do servidor. Sempre use medidas de segurança adicionais e mantenha seus sistemas atualizados.

📋 Características:

Analisa o arquivo de log do Apache para padrões suspeitos que podem indicar uma tentativa de SQL Injection.
Gera um relatório temporário com as linhas suspeitas para revisão manual.
Simples e fácil de usar, ideal para sysadmins e profissionais de segurança que desejam uma checagem rápida.
🛠️ Requisitos:

Servidor Linux com Apache instalado
Permissões de leitura para o arquivo de log do Apache
Bash Shell
🚀 Uso:

Dê permissão de execução ao script:
```
chmod +x check_sql_injection.sh
```
Execute o script como usuário com permissões suficientes para ler os logs:
```
sudo ./check_sql_injection.sh
```
📝 Licença:

Este projeto está licenciado sob a MIT License - veja o arquivo LICENSE.md para mais detalhes.
