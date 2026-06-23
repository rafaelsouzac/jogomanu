@echo off
:: 1. Configurações do Banco de Dados
set DB_USER=root
set DB_PASS=
set DB_NAME=jogomanu

:: 2. Configurações de Diretórios (Todos sem aspas na definição)
set MYSQL_DUMP=c:\xampp\mysql\bin\mysqldump.exe
set BACKUP_DIR=c:\xampp\htdocs\jogomanu\docs

:: 3. Obter a data e hora atual formatada
for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value') do set datetime=%%i
set DATA=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%_%datetime:~8,2%-%datetime:~10,2%-%datetime:~12,2%

set ARQUIVO_FINAL=%BACKUP_DIR%\backup_%DB_NAME%_%DATA%.sql

:: 4. Garantir que o diretório de destino existe
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

:: 5. Executar o Backup incluindo a estrutura do Banco (--databases e --add-drop-database)
echo Criando backup completo do banco de dados %DB_NAME%...
if "%DB_PASS%"=="" (
    "%MYSQL_DUMP%" -u%DB_USER% --databases %DB_NAME% --add-drop-database --single-transaction --quick > "%ARQUIVO_FINAL%"
) else (
    "%MYSQL_DUMP%" -u%DB_USER% -p%DB_PASS% --databases %DB_NAME% --add-drop-database --single-transaction --quick > "%ARQUIVO_FINAL%"
)

:: 6. Verificação de Erro
if %ERRORLEVEL% EQU 0 (
    echo Backup concluido com sucesso!
    echo Salvo em: %ARQUIVO_FINAL%
) else (
    echo Ocorreu um erro ao gerar o backup.
    pause
)

:: 7. Limpeza (Opcional: Deleta backups com mais de 7 dias nesta pasta)
forfiles /p "%BACKUP_DIR%" /m "backup_%DB_NAME%_*.sql" /d -7 /c "cmd /c del @path"

timeout /t 5
