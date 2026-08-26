FROM jenkins/jenkins:lts

# Muda para o usuário root para conseguir instalar pacotes no sistema operacional do container
USER root

# Atualiza e instala dependências básicas, curl e gnupg
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    software-properties-common

# Instala o Node.js (versão 20 LTS) e o npm
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# Instala o Terraform (ferramenta de IaC que você usa no deploy)
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/source.list.d/hashicorp.list \
    && apt-get update && apt-get install -y terraform

# Instala a CLI oficial do Docker dentro do container (para o Jenkins conseguir buildar e dar push nas imagens)
RUN curl -fsSL https://get.docker.com -o get-docker.sh \
    && sh get-docker.sh

# Retorna para o usuário padrão do Jenkins por questões de segurança
USER jenkins