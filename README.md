# aponti-fap-observabilidade 🚀 Projeto de Automação, Infraestrutura como Código e Monitoramento

![CI](https://github.com/paulocarlosfilho/aponti-fap-observabilidade/actions/workflows/terraform.yml/badge.svg)

## 📌 Sobre o Projeto

Este projeto foi desenvolvido como parte da minha jornada de especialização em DevOps e Engenharia de Infraestrutura.
O objetivo principal foi estruturar um ambiente de infraestrutura em nuvem simulada localmente utilizando **Terraform** e **LocalStack**, integrado a uma esteira de Integração Contínua (CI/CD) automatizada para provisionamento e testes de recursos AWS. Além disso, o projeto contempla práticas de observabilidade e orquestração de containers.

---

## 🎯 Objetivos

* Provisionar recursos de infraestrutura de forma declarativa utilizando **Terraform**.
* Simular serviços de nuvem AWS localmente com o **LocalStack**.
* Automatizar o ciclo de vida de infraestrutura através de pipelines de CI/CD.
* Demonstrar boas práticas de organização de código HCL e configuração de ambientes isolados para testes de infraestrutura.

---

## 👁️ Visão Geral do Projeto

O fluxo de trabalho principal consiste em:
* **Provisionamento Local:** Subida automatizada do LocalStack via container Docker para simular o ecossistema AWS.
* **Infraestrutura como Código (IaC):** Utilização do Terraform para realizar o ciclo `init`, `plan` e `apply` direcionado ao endpoint simulado.
* **Automação (CI/CD):** Execução de validações automáticas de infraestrutura a cada alteração no repositório.

---

## 🛠️ Tecnologias Utilizadas

* **Terraform** → Ferramenta de Infraestrutura como Código (IaC).
* **LocalStack** → Simulador de serviços da AWS rodando em container Docker.
* **Docker & Docker Compose** → Orquestração de containers para o ambiente de testes.
* **GitHub Actions / GitLab CI** → Ferramentas de automação de esteiras de CI/CD.
* **TypeScript / JavaScript** → Apoio no desenvolvimento e lógica de serviços complementares.

---

## 📂 Estrutura do Repositório

* `Terraform/` → Contém os scripts `.tf` para a criação e gerenciamento dos recursos de infraestrutura.
* `monitoring/` / `Observabilidade/` → Configurações voltadas para métricas, logs e monitoramento do ambiente.
* `.github/workflows/` ou `.gitlab-ci.yml` → Esteiras de CI/CD configuradas para validação automática da infraestrutura.
* `Dockerfile` / `Jenkinsfile` → Arquivos de containerização e orquestração de suporte.

---

## ⚙️ Como Usar

1. **Configurar o Ambiente:** Certifique-se de ter o Docker rodando na sua máquina.
2. **Subir o LocalStack:** Inicie o serviço simulador da AWS (mapeado na porta `4566`).
3. **Executar o Terraform:** 
   ```bash
   cd Terraform
   terraform init
   terraform plan
   terraform apply

## 🚀 Aprendizado

Este projeto representa um passo sólido na minha evolução técnica em DevOps.
Através dele, estou consolidando conhecimentos em:

* Infraestrutura como Código (IaC) com Terraform.

* Emulação de ambientes de nuvem com LocalStack.

* Integração e automação de deploys em esteiras CI/CD.

* Orquestração de containers e monitoramento.

## 💼 Objetivo Profissional

Estou me preparando de forma profissional e estruturada para conquistar oportunidades na área de DevOps e Engenharia de Confiabilidade / Dados.
Este repositório é uma amostra prática das minhas habilidades e dedicação. Adoro receber críticas construtivas, conselhos e dicas técnicas. Vamos bater um papo!

📌 **Autor**: Paulo Carlos
🔗 **LinkedIn**: https://www.linkedin.com/in/paulocarlosfilho/