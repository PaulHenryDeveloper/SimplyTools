@echo off
chcp 65001 > nul 2>&1

title Simply Tools - Versão 1.7.8 (lançado em 21/06/2024)

:: Tela inicial
cls
echo ======================================
echo          SIMPLY TOOLS
echo ======================================
echo Versão: 1.7.8 (lançado em 21/06/2024)
echo Criado por: PaulHenrySantus
echo ======================================
pause

:menu
cls
echo ======================================
echo          MENU DE FERRAMENTAS
echo ======================================
echo Selecione uma opção:
echo.
echo 1. Canal do Telegram
echo 2. Limpar Pasta Temporária
echo 3. Pesquisar no Navegador
echo 4. Buscar Imagens
echo 5. Ferramentas de Otimização
echo 6. Melhores Sites
echo 7. Assista Star Wars (Telnet)
echo 8. Instalar Programas (beta)
echo 9. Sobre
echo 10. Sair
echo ======================================
set /p escolha="Digite sua escolha (1-10): "
cls

if %escolha%==1 goto inscrever_telegram
if %escolha%==2 goto limpar_temp
if %escolha%==3 goto pesquisar_navegador
if %escolha%==4 goto buscar_imagens
if %escolha%==5 goto otimizar_sistema
if %escolha%==6 goto melhores_sites
if %escolha%==7 goto assistir_star_wars
if %escolha%==8 goto instalar_programas
if %escolha%==9 goto sobre
if %escolha%==10 goto sair
echo Escolha inválida. Tente novamente.
pause
goto menu

:inscrever_telegram
cls
echo ======================================
echo Acessando Canal do Telegram...
echo ======================================
ping -n 2 127.0.0.1 > nul
start https://t.me/paulhenry_oficial
pause
cls
goto menu

:limpar_temp
cls
echo ======================================
echo Limpando Pasta Temporária...
echo ======================================
ping -n 2 127.0.0.1 > nul
del /Q %temp%\*
echo Pasta temporária limpa!
pause
cls
goto menu

:pesquisar_navegador
cls
set /p pesquisa="Digite o termo de pesquisa: "

echo ======================================
echo Pesquisando no navegador por "%pesquisa%"...
echo ======================================
ping -n 2 127.0.0.1 > nul
start https://www.google.com/search?q=%pesquisa%
pause
cls
goto menu

:buscar_imagens
cls
set /p imagens="Digite o termo de busca de imagens: "

echo ======================================
echo Buscando imagens para "%imagens%"...
echo ======================================
ping -n 2 127.0.0.1 > nul
start https://pixabay.com/pt/images/search/%imagens%
pause
cls
goto menu

:otimizar_sistema
cls
echo ======================================
echo Executando Ferramentas de Otimização...
echo ======================================
ping -n 2 127.0.0.1 > nul
echo Este script requer acesso de administrador.
echo Este script vai baixar e executar ferramentas de otimização do site christitus.com.
echo.
net session >nul 2>&1
if %errorLevel% == 0 (
    set /p confirmar="Deseja continuar? (s/n): "
    if /i "%confirmar%"=="s" (
        echo Otimizando o sistema...
        powershell -Command "iwr -useb https://christitus.com/win | iex"
        echo Otimização concluída.
    ) else (
        echo Operação cancelada.
    )
) else (
    echo Erro: Este script precisa ser executado como administrador.
)
pause
cls
goto menu

:melhores_sites
cls
echo ======================================
echo          MELHORES SITES
echo ======================================
echo Escolha um site para visitar:
echo.
echo 1. Photopea - Editor de Fotos Online
echo 2. Pixabay - Banco de Imagens Gratuitas
echo 3. SoundCloud - Descubra Músicas
echo 4. NetMovies - Filmes e Séries Online
echo 5. Convertio - Ferramenta de Conversão de Arquivos
echo 6. Pluto TV - TV ao Vivo Gratuita
echo 7. Leonardo AI - Ferramentas de IA
echo 8. VirusTotal - Verificação de Arquivos
echo 9. Remove.bg - Remoção de Fundo de Imagens
echo 10. Polotno Studio - Editor de Apresentações Online
echo 11. Voltar ao Menu Principal
echo ======================================
set /p escolha_site="Digite sua escolha (1-11): "

if %escolha_site%==1 (
    start https://www.photopea.com/
) else if %escolha_site%==2 (
    start https://pixabay.com/pt/
) else if %escolha_site%==3 (
    start https://soundcloud.com/discover
) else if %escolha_site%==4 (
    start https://www.netmovies.com.br/
) else if %escolha_site%==5 (
    start https://convertio.co/pt/
) else if %escolha_site%==6 (
    start https://pluto.tv/
) else if %escolha_site%==7 (
    start https://app.leonardo.ai/
) else if %escolha_site%==8 (
    start https://www.virustotal.com/
) else if %escolha_site%==9 (
    start https://www.remove.bg/pt-br
) else if %escolha_site%==10 (
    start https://studio.polotno.com/
) else if %escolha_site%==11 (
    cls
    goto menu
) else (
    echo Escolha inválida. Tente novamente.
    pause
    cls
    goto melhores_sites
)

cls
goto menu

:assistir_star_wars
cls
echo ======================================
echo     ASSISTIR STAR WARS (Telnet)
echo ======================================

echo Ativando o cliente Telnet...
echo.
pkgmgr /iu:"TelnetClient"
echo.
echo Cliente Telnet ativado com sucesso!
pause

echo Conectando ao servidor para assistir Star Wars...
echo.
telnet towel.blinkenlights.nl
echo.
echo Conexão encerrada.
pause
cls
goto menu

:instalar_programas
cls
echo ======================================
echo          INSTALAR PROGRAMAS (beta)
echo ======================================
echo Verificando programas instalados:
echo.
echo 1. OBS Studio
echo 2. Mozilla Firefox
echo 3. VLC Media Player
echo 4. Sublime Text
echo 5. Notepad++
echo 6. Visual Studio
echo 7. Voltar ao Menu Principal
echo ======================================
set /p escolha_prog="Digite sua escolha (1-7): "

if %escolha_prog%==1 (
    cls
    echo Verificando OBS Studio...
    winget list | findstr /I "OBS Studio"
    if %errorlevel%==0 (
        echo OBS Studio está instalado.
        echo Deseja desinstalar? (s/n): 
        set /p confirmar_uninstall_obs=""
        if /i "%confirmar_uninstall_obs%"=="s" (
            winget uninstall "OBS Studio"
        )
    ) else (
        echo OBS Studio não está instalado.
        echo Deseja instalar? (s/n): 
        set /p confirmar_install_obs=""
        if /i "%confirmar_install_obs%"=="s" (
            winget install "OBS Studio"
        )
    )
    pause
    cls
    goto instalar_programas
) else if %escolha_prog%==2 (
    cls
    echo Verificando Mozilla Firefox...
    winget list | findstr /I "Mozilla Firefox"
    if %errorlevel%==0 (
        echo Mozilla Firefox está instalado.
        echo Deseja desinstalar? (s/n): 
        set /p confirmar_uninstall_ff=""
        if /i "%confirmar_uninstall_ff%"=="s" (
            winget uninstall "Mozilla Firefox"
        )
    ) else (
        echo Mozilla Firefox não está instalado.
        echo Deseja instalar? (s/n): 
        set /p confirmar_install_ff=""
        if /i "%confirmar_install_ff%"=="s" (
            winget install "Mozilla Firefox"
        )
    )
    pause
    cls
    goto instalar_programas
) else if %escolha_prog%==3 (
    cls
    echo Verificando VLC Media Player...
    winget list | findstr /I "VLC media player"
    if %errorlevel%==0 (
        echo VLC Media Player está instalado.
        echo Deseja desinstalar? (s/n): 
        set /p confirmar_uninstall_vlc=""
        if /i "%confirmar_uninstall_vlc%"=="s" (
            winget uninstall "VLC media player"
        )
    ) else (
        echo VLC Media Player não está instalado.
        echo Deseja instalar? (s/n): 
        set /p confirmar_install_vlc=""
        if /i "%confirmar_install_vlc%"=="s" (
            winget install "VLC media player"
        )
    )
    pause
    cls
    goto instalar_programas
) else if %escolha_prog%==4 (
    cls
    echo Verificando Sublime Text...
    winget list | findstr /I "Sublime Text"
    if %errorlevel%==0 (
        echo Sublime Text está instalado.
        echo Deseja desinstalar? (s/n): 
        set /p confirmar_uninstall_sublime=""
        if /i "%confirmar_uninstall_sublime%"=="s" (
            winget uninstall "Sublime Text"
        )
    ) else (
        echo Sublime Text não está instalado.
        echo Deseja instalar? (s/n): 
        set /p confirmar_install_sublime=""
        if /i "%confirmar_install_sublime%"=="s" (
            winget install "Sublime Text"
        )
    )
    pause
    cls
    goto instalar_programas
) else if %escolha_prog%==5 (
    cls
    echo Verificando Notepad++...
    winget list | findstr /I "Notepad++"
    if %errorlevel%==0 (
        echo Notepad++ está instalado.
        echo Deseja desinstalar? (s/n): 
        set /p confirmar_uninstall_notepad=""
        if /i "%confirmar_uninstall_notepad%"=="s" (
            winget uninstall "Notepad++"
        )
    ) else (
        echo Notepad++ não está instalado.
        echo Deseja instalar? (s/n): 
        set /p confirmar_install_notepad=""
        if /i "%confirmar_install_notepad%"=="s" (
            winget install "Notepad++"
        )
    )
    pause
    cls
    goto instalar_programas
) else if %escolha_prog%==6 (
    cls
    echo Verificando Visual Studio...
    winget list | findstr /I "Visual Studio"
    if %errorlevel%==0 (
        echo Visual Studio está instalado.
        echo Deseja desinstalar? (s/n): 
        set /p confirmar_uninstall_vs=""
        if /i "%confirmar_uninstall_vs%"=="s" (
            winget uninstall "Visual Studio"
        )
    ) else (
        echo Visual Studio não está instalado.
        echo Deseja instalar? (s/n): 
        set /p confirmar_install_vs=""
        if /i "%confirmar_install_vs%"=="s" (
            winget install "Visual Studio"
        )
    )
    pause
    cls
    goto instalar_programas
) else if %escolha_prog%==7 (
    cls
    goto menu
) else (
    echo Escolha inválida. Tente novamente.
    pause
    cls
    goto instalar_programas
)

:sobre
cls
echo =======================================
echo            SOBRE O SCRIPT
echo =======================================
echo.
echo Criado por: PaulHenrySantus
echo Versão: 1.7.8
echo Data de Lançamento: 21/06/2024
echo.
echo Simply Tools é um script multifuncional que oferece
echo uma variedade de ferramentas úteis para otimização,
echo busca, navegação e muito mais. Criado com o objetivo
echo de facilitar tarefas diárias e proporcionar acesso
echo rápido a recursos importantes.
echo.
echo Se você gostou deste script, considere fazer uma doação
echo para apoiar o desenvolvedor:
echo https://www.paypal.com/donate/?hosted_button_id=FLSHQ3U5J5XTJ
echo 
pause
cls
goto menu

:sair
cls
echo =======================================
echo Obrigado por usar o Simply Tools!
echo =======================================
ping -n 2 127.0.0.1 > nul
exit
