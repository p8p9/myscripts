#!/bin/bash
# Desenvolvido por Abel da Silva
# GitHub: https://github.com/p8p9/
# Data: 17/05/2016
# Shell-script para instalação do Telegram
# Funcionalidades: 
#                 *Está adaptável para futuras versões
#                 *Funciona em qualquer distribuição Linux
###########################################################################
# Remover as versoes anteriores
echo "Removendo Versões Anteriores"
rm -Rf /opt/telegram*
rm -Rf /usr/bin/telegram
rm -Rf /usr/share/applications/telegram.desktop
clear
echo "Remoção Completada"
sleep5
clear

# Baixar Telegram
echo "Download do  Telegram"
wget -c A.tar.xz --convert-links https://tdesktop.com/linux -O tsetup.tar.xz
clear
echo "Download Concluído"
sleep 5
clear

# Descompactar Arquivo
echo "Descompactando Telegram"
tar -Jxf tsetup.tar.xz -C /opt
# Renomear Telegram
mv /opt/Telegram*/ /opt/telegram
# Excluir Telegram
rm -Rf tsetup.tar.xz
clear
echo "Descompactação Concluída"
sleep 5
clear

# Criar link simbólico
echo "Criando lançador para o aplicativo"
ln -sf /opt/telegram/Telegram /usr/bin/telegram
clear
echo "Lançador para Telegram criado"
sleep 5
clear

# Criar atalho de menu para Telegram
echo -e '[Desktop Entry]\n Version=1.0\n Name=Telegram\n Exec=/opt/telegram/Telegram\n Icon=/opt/telegram/Telegram\n Type=Application\n Categories=Application;Network;' | sudo tee /usr/share/applications/telegram.desktop
echo "Atalho criado com sucesso, acesse o aplicativo pelo"
sleep 5
clear
exit
