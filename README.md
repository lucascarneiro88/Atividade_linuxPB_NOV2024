# ATIVIDADE PRÁTICA - SUBSISTEMA LINUX COM WSL

## Requisitos
- **Windows 10 ou superior**
- **WSL (Windows Subsystem for Linux)**
- **Ubuntu 20.04 ou superior**

## Objetivos

- Criar um subsistema Linux utilizando o WSL com a distribuição Ubuntu 20.04 ou superior.
- Subir um servidor Nginx, garantindo que ele esteja online e funcionando.
- Criar um script que valide se o servidor Nginx está online e envie o resultado da validação para um diretório em especifico de sua escolha.
- O script deve incluir: Data + Hora + Nome do serviço + Status + Mensagem personalizada indicando se o serviço está ONLINE ou OFFLINE.
- O script deve gerar dois arquivos de saída: um para o serviço online e outro para o serviço offline.
- Automatizar a execução do script a cada 5 minutos.
- Realizar o versionamento da atividade no GitHub.
- Documentar o processo de instalação do Linux, a configuração do servidor Nginx e o processo de automação.

## ÍNDICE

1. [Ativação do WSL](#ativação-do-wsl)
2. [Instalação do Ubuntu 20.04 ou superior](#instalação-do-ubuntu-2004-ou-superior)
3. [Instalação do Nginx no Ubuntu](#instalação-do-nginx-no-ubuntu)
4. [Criação do Script de Verificação de Status](#criação-do-script-de-verificação-de-status)
5. [Automatização da Execução do Script](#automatização-da-execução-do-script)
6. [Versionamento e Documentação](#versionamento-e-documentação)
## 1. Ativação do WSL

Para ativar o Windows Subsystem for Linux (WSL) no Windows, você pode seguir os seguintes passos:

### Opção 1: Usando o PowerShell (Método Recomendado)
1. Abra o **PowerShell** com permissões de administrador e execute o comando:

```bash
wsl --install
````

    
Este comando irá instalar automaticamente o WSL e os componentes necessários. Após a instalação, o Ubuntu será iniciado automaticamente.

### Opção 2: Ativação Manual dos Recursos no Painel de Controle

 Caso queira ativar o WSL manualmente ou se a opção do PowerShell não funcionar corretamente, siga os passos abaixo:

1. Abra o **Painel de Controle**.
2. Selecione **Programas**.
3. Clique em **Ativar ou desativar recursos do Windows**.
4. Na **lista de recursos**, marque as opções:
      - Hyper-V
      - Plataforma de Máquina Virtual
      - Subsistema do Windows para Linux

5. Clique em **OK** para aplicar as mudanças. O sistema pode pedir para reiniciar o computador.
6. Após o reinício, vá até a **Windows Store** e baixe o **Ubuntu 20.04** ou superior.

## Configuração do Ubuntu
Após a instalação do Ubuntu, vá até o Menu Iniciar e procure por Ubuntu. Clique para abrir o aplicativo.  
Na primeira vez que o Ubuntu for aberto, ele solicitará a criação de um usuário e senha.  
Isso é necessário para além do usuário root, que já existe no sistema.

## Testando a Configuração
Após a instalação e configuração do Ubuntu, você pode usar alguns comandos para verificar o funcionamento do sistema:  

 Exibe o nome do usuário atualmente logado no sistema.
```bash
whoami
````
 Exibe o nome do host da máquina, útil para identificar o computador na rede.
```bash
hostname
````
![Captura do comando hostname no terminal](img/imagem-comando-hostname.png)

 Exibe informações detalhadas sobre o sistema operacional, como o kernel e a versão do Ubuntu em uso.
```bash
uname -a
````
![Captura do comando uname -a no terminal](img/imagem-comando-uname-a.png)

Exibe o nome do usuário atual.
 ```bash
id -un
````
![Captura do comando id -un no terminal](img/imagem-comando-id-un.png)

Exibe o nome do usuário configurado no sistema.
```bash
echo $USER
````
![Captura do comando echo $USER no terminal](img/imagem-comando-echosuper.png)




