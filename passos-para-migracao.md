# Passos para migração


### Criar VPC
- Região `us-east-1`
- Criar VPC de nome `cloudbooks-vpc` escolher opção `create vpc and moore`
- Escolher demais opções padrão e desmarcar o opção do S3 para `None` pois não será usado neste projeto

### Criar Instancia EC2
- Launch an instance Ec2
- name `cloudbooks-ec2`
- Escolha Ubuntu 22.04
- Instance type escolher 2 vcpu 16GB -> db.r5.large
- Criar um key-par para acesso SSH
- Create group security e editar
- Selecionar vpc criada e escolher subnet publica
- liberar acessos, http, https e ssh 
- Como medida de segurança pode habilitar apenas os ips necessários na porta ssh
- Demais opções padrão
- Número de instâncias como 2

### Criar banco de dados RDS
- Standard create
- MariaDB
- Engine type 10.5.20
- Templates Production
- Preencha os valores master username e password e guarde os valores
- Conecte com a instância EC2 criada
- Em vpc security group escolha o grupo criado

### Criar elastic Ip e vincular ao EC2 criado
- Painel do EC2
- Elastics Ip
- Crie com a região correta e opçãoes padrão
- Apos criado selecione-o e em actions escolha `associate elastic ip address` 
- Escolha a instância criada

### Adicionar Elastic IP ao Hosted Zone no Route 53
- Acessar hosted zone criada
- adicionar um Registro do tipo A e colocar o ip da máquina EC2

### Instalações mínimas dentro da máquina EC2 para rodar o Wordpress

- Acessar máquina instancia EC2
- criar chave ssh `ssh-keygen`
- copiar valor da chave ssh e adicionar a conta do github do projeto
- instalar dependencias necessárias que a documentação do wordpress pede
`sudo apt update`
`sudo apt install nginx php php-fpm php-curl php-mysql php-gd php-mbstring php-xml php-imagick php-zip php-xmlrpc`
