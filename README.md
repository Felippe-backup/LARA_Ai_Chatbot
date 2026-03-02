# LARA AI - Sua Assistente Inteligente e Bem-Humorada 🚀

[![LARA AI CI/CD](https://github.com/Valtinho/lara_ai/actions/workflows/ci.yml/badge.svg)](https://github.com/Valtinho/lara_ai/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

LARA é uma Prova de Conceito (POC) de alto nível desenvolvida em Flutter, integrando Inteligência Artificial real (Google Gemini) com uma arquitetura robusta, escalável e resiliente. O projeto foi desenhado para demonstrar excelência técnica em engenharia de software mobile e experiência do usuário.

<img src=https://github.com/user-attachments/assets/b0fbb35b-bc01-4021-8641-151296a6dbfa width="700" />
<p align="center">
  <b>Figura 1:</b> Gif mostrando o funcionamento do chat.
</p>
---

## 🚀 Engenharia de Qualidade e DevOps (CI/CD)
O projeto implementa um fluxo de **entrega contínua e proteção de código** rigoroso, garantindo que apenas versões estáveis cheguem à produção.

### 🛡️ Pipeline Local (`.push.bat`)
Para evitar falhas no repositório remoto e garantir a integridade do `main`, foi desenvolvido um script de automação local. Antes de cada commit, o script executa:
1. **Auto-fix & Formatação:** Correção automática de problemas simples e padronização.
2. **Análise Estática (Linter):** Verificação rigorosa de regras de código.
3. **Testes Unitários:** Execução obrigatória de todos os testes.
4. **Git Flow Automatizado:** Se aprovado, o script solicita a mensagem de commit e realiza o `push` para a branch atual.

### ⚙️ GitHub Actions & Fastlane (Double Shield)
A infraestrutura de CI/CD automatiza o ciclo de vida desde o desenvolvimento até o release:
* **Validação de Branches:** Controle de nomenclatura (ex: `dev/LARA-XXX_feat`) para manter a organização do projeto.
* **Merge Automático:** Pull Requests em `dev` são validados e integrados automaticamente em `staging` e, por fim, em `main`.
* **Deploy com Fastlane:** Ao atingir a branch `main`, o **Fastlane** assume a automação do build Android, gerando o APK de release com versionamento dinâmico.
* **GitHub Releases:** O binário final (.apk) é automaticamente publicado no GitHub Releases via CI.

---

## 🎨 Design & Prototipagem (Figma)
Todo o desenvolvimento foi precedido por um estudo rigoroso de interface e experiência do usuário no Figma, garantindo fidelidade visual e uma jornada fluida.
- **Link do Protótipo:** [Acesse aqui no Figma](https://www.figma.com/design/ZY6hmmJcxiJ2Tt9YqJembk/Sem-t%C3%ADtulo?node-id=0-1&t=hiYuSkCtsmeLRykM-1)

 <p  align="center">
   <b>Modo claro</b>
 </p>
 
  <p align="center">
    <img width="150" src="https://github.com/user-attachments/assets/8df630aa-6b81-40f8-b869-a4c1c788bb37" />
    <img width="150" src="https://github.com/user-attachments/assets/45d78fe9-f302-4ff8-82b3-37d3b7da8752" />
    <img width="150" src="https://github.com/user-attachments/assets/f5214e4a-dc6c-4491-b808-2010e4488d75" />
    <img width="150" src="https://github.com/user-attachments/assets/de23c80d-ff31-41b1-b22f-25400ff9d15a" />
    <img width="150" src="https://github.com/user-attachments/assets/d4d1f353-2532-4419-a0a4-16b94bd4640d" />

  </p>
  
  <p  align="center">
    <b>Modo Escuro</b>
  </p>
  <p align="center">
    <img width="150" alt="Screenshot_20260221_205338" src="https://github.com/user-attachments/assets/31b1b5b8-624f-4cc6-b6a7-c6eab872d26a" />
    <img width="150" alt="Screenshot_20260221_205521" src="https://github.com/user-attachments/assets/c4037360-0d53-4596-9739-7de28afe66ee" />
    <img width="150" alt="Screenshot_20260221_205531" src="https://github.com/user-attachments/assets/9fcbaa92-676b-4d34-bd35-8e9169a31d41" />
    <img width="150" alt="Screenshot_20260221_205820" src="https://github.com/user-attachments/assets/4aca4d16-275d-439b-ac9e-734a26ca9ade" />
    <img width="150" alt="Screenshot_20260221_205834" src="https://github.com/user-attachments/assets/225bf759-5c12-4f67-b096-bc10b4dee6e3" />
  </p>

---

## 🏛️ Arquitetura e Engenharia de Software
Este projeto não é apenas um chat; é um modelo de aplicação de padrões de projeto modernos:

- **Clean Architecture:** Divisão clara entre Dados (Data), Negócio (Domain) e Interface (Presentation).
- **MVVM (Model-View-ViewModel):** Toda a lógica das Views é delegada para ViewModels, utilizando o padrão `stateObserver` para manter widgets puramente declarativos.
- **Gerenciamento de Estado:** Utilização de **BLoC/Cubit** para fluxos de dados reativos e previsíveis.
- **Injeção de Dependências:** Controle total via **Flutter Modular**.
- **Princípios SOLID:** Código focado em manutenibilidade e baixo acoplamento.
- **Internacionalização (i18n):** Suporte nativo completo para **Português (BR)** e **Inglês (EN)** via arquivos `.arb`.
<p align="center">
<img width="500" alt="Diagrama de arquitetura de software" src="https://github.com/user-attachments/assets/02b30e2f-7eff-40b8-afab-23aaaf82677b"/>
</p>
<p align="center">
  <b>Figura 2:</b> Diagrama de arquitetura de software
</p>

---

## ✨ Funcionalidades em Destaque

### 🤖 IA Real com Personalidade
A LARA utiliza a API do **Google Gemini** com efeito de **Streaming**. 
- **Troca de Personalidade:** Alterne entre os modos *Normal*, *Conciso* ou *Sarcástico* em tempo real.
- **Suporte a Markdown:** Respostas ricas com tabelas, blocos de código, negrito e listas.
- **Ajustes Técnicos:** Controle de temperatura e limite de resposta via UI.

<p align="center">
  <img src="https://github.com/user-attachments/assets/59ceab87-70da-4c75-a23f-bf54869b665c" width="700" />
</p>

<p align="center">
  <b>Figura 3:</b> Diagrama de fluxo de conversas com a LARA.
</p>

### 🔒 Segurança e Privacidade de Elite
- **Autenticação Multi-Fator (MFA):** Proteção via biometria nativa (FaceID/Digital) na entrada e após o login.
- **Isolamento de Dados:** Histórico vinculado ao UUID do Firebase, garantindo privacidade total.

### 🛠️ Resiliência e UX
- **Tratamento de Erros:** Mapeamento de erros técnicos para mensagens humanas e acolhedoras.
- **Retry Inteligente:** Em caso de falha, o texto do usuário volta automaticamente para o campo de edição.

<p align="center">
  <b>Fluxo de integração do aplicativo</b>
</p>
<p align="center">
<img width="800" alt="Mermaid Chart - Create complex, visual diagrams with text -2026-02-23-195256" src="https://github.com/user-attachments/assets/91c4b9d8-cfdc-4836-b59d-384ded0ce2d9" />
</p>

---

## 🚀 Automação e Qualidade (Double Shield)

1. **Pipeline Local (`.push.bat`):** Script de automação customizado que realiza a limpeza do projeto, análise de linter e executa todos os testes unitários/widget localmente. **Garante que nenhum erro seja enviado para o repositório.**
2. **GitHub Actions (CI/CD):** Workflow remoto que valida novamente o build e testes em ambiente de integração contínua.

---

## 📦 Como Rodar o Projeto

### 1. Requisitos
- Flutter SDK (Channel Stable)
- Chave de API do Gemini ([Obtenha aqui](https://aistudio.google.com/))
- Firebase configurado (Google e E-mail/Senha ativos)

### 2. Instalação
```bash
git clone https://github.com/Felippe-backup/LARA_Ai_Chatbot.git
cd lara_ai
flutter pub get
```

### 3. Configuração
Crie um arquivo `.env` na raiz:
```env
API_KEY=SUA_CHAVE_AQUI
```
Adicione o `google-services.json` em `android/app/`.

---

Defina o **.env** nos seus assets:
```
  assets:
    - .env
```

---

## 🧪 Testes Automatizados

### Unitários e Widget
```bash
flutter test
```

### ⚠️ Teste de Integração (E2E)
Para rodar os testes de integração, execute:
```bash
flutter test integration_test/app_test.dart
```
**NOTA IMPORTANTE:** Como o teste interage com recursos de segurança do sistema, **você deve estar com o celular em mãos**. Será necessário interagir manualmente quando o popup do Google Login aparecer para selecionar a conta e validar o sensor biométrico (Digital/FaceID) quando solicitado. O script aguardará essas ações para prosseguir.

---

## 👨‍💻 Desenvolvedor
**Felippe Pinheiro**  
Especialista em Desenvolvimento Mobile Flutter.

- [LinkedIn](https://www.linkedin.com/in/felippe-pinheiro-dev-flutter/)
- [GitHub](https://github.com/Felippe-backup/LARA_Ai_Chatbot.git)

---
Licença **MIT**.
