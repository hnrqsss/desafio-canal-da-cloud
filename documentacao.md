# Definir EC2
4 vcpu 8GB -> c5.xlarge

Instância do tipo compartilhadacom prazo de reserva por 1 ano e pagamento integral

Custo ano: U$ 1007.40


# Banco de dados
Aurora -> MySQL
2 vcpu 16GB -> db.r5.large

Custo ano: U$ 2.803,20

# Armazenamento de disco EBS
Armazenamento atual de 100GB
Novo 200GB
Motivos atualmente se usa 85% desse amarzenamento e está previsto um aumento de pelo menos 50% o que atenderia e fica uma margem para imprevistos

Custo ano: U$ 393,24

# ASG
Deve ser definido após a criação do EC2

# Route 53


# Principais vantagens de migração do projeto
1. Escalibilidade Horizontal
Aumentar o número de instâncias de acordo com a necessidade da aplicação.

2. Escalabilidade Vertical
Aumentar o poder computacional concentrado no aumento de recurso de processamento e memória sob demanda.
Resumindo, os recursos se adaptarão ao projeto conforme sua necessidade, gerando assim mais performance e custo controlado.

3. Controle de custos, o cliente saberá o que será cobrado

4. Redução de custos, o cliente pode optar por utilizar produtos AWS sob demanda que ele pagará só o que utilizar

5. Backups programáveis para arquivos e banco de dados

6. Segurança controle de acesso aos produtos AWS e acompanhamento de LOGs em tempo real dos produtos utilizados.

7. Replicação de storage onde ficam salvos os PDFs e audiobooks da aplicação.


# Email para cliente

Caro cliente segue algumas informações sobre a migração do projeto cloudbooks para o ambiente nuvem AWS.

Durante o processo de migração o sistema ficará indisponível para acesso público e nenhuma dado poderá ser salvo ou modificado sem comunucação prévia para nossa equipe de migração.

Indico que durante este processo  sua equipe crie uma página HTML bem simples informando que o sistema está em manutenção com alguma informação necessária para que seus clientes fiquem cientes do processo.

Será necessário o backup de todo o projeto incluindo arquivos necessários para o funcionamento da aplicação, documentos anexos (PDF, audiobooks, imagens, videos e demais arquivos) e backup do banco de dados.

Poderá ser fornecido a nossa equipe durante uma chamada de video que será gravada os acessos a máquina atual que se encontra o banco de dados, projeto, arquivos e o acesso Domínio DNS. Estes acessos serão testados durante a chamada de video para previnir quaisquer problemas ou também alguma pessoa que tenha domínio e conhecimento de todo este ambiente pode acompanhar o procedimento e efetuar as tarefas que serão solicitadas.

Segue anexo uma apresentação contendo benefícios, custos e demais informações desta migração.

anexo -> apresentacao_migracao.ppt

Grato,

Time 2 Desafio AWS
Canal da Cloud - Mentoria 3.0.

Mentorados
Henrique Assunção - dev@hnrqss.com,
Fabio Martins - fmartinss@gmail.com,
Marcelo - ,

Mentor
Anderson
Vitor

