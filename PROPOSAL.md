## The Challenge 🚀

O seu objetivo é desenvolver o **GymGate**, um MVP de um sistema de controle de acesso para catracas de academia. O sistema deve gerenciar alunos e validar se eles têm permissão para entrar com base no seu plano e horário.

Sugerimos que você divida o seu desenvolvimento em 3 dias (sprints diárias):

### Dia 1: O Cérebro (Backend & Lógica)
Foque na regra de negócio e manipulação de dados usando o banco MySQL já configurado.
* **Task 1.1:** Crie os endpoints básicos (CRUD) para gerenciar a tabela `alunos`.
* **Task 1.2 (Core Business):** Crie um endpoint `POST /check-access`. Ele deve receber um `cpf` e retornar se o acesso está liberado ou negado.
  * *Regra:* Para o acesso ser liberado, o aluno deve estar com o `status_ativo` igual a `1` (true), e o horário atual do servidor deve estar dentro da janela de `hora_inicio` e `hora_fim` do plano dele.

### Dia 2: A Portaria (Frontend & Integração)
Transforme os dados em interface usando React e Tailwind.
* **Task 2.1 (Cadastro):** Crie uma tela para cadastrar novos alunos. 
  * *Integração:* Ao digitar o CEP, consuma a API pública do **ViaCEP** (`https://viacep.com.br/ws/{cep}/json/`) para preencher automaticamente os campos de endereço.
* **Task 2.2 (Dashboard):** Crie uma listagem simples exibindo os alunos cadastrados.
* **Task 2.3 (Catraca):** Crie um simulador de catraca. Uma tela com um input para digitar o CPF. Ao enviar, deve exibir um feedback visual claro (Verde para Liberado, Vermelho para Negado com o motivo).

### Dia 3: Refinamento (Logs e Edge Cases)
Mostre sua atenção aos detalhes.
* **Task 3.1 (Histórico):** Modifique o banco e o sistema para registrar um log de cada tentativa de acesso na catraca (data/hora, aluno, status de sucesso/falha).
* **Task 3.2 (Anti-carona):** Adicione uma trava no backend: se o aluno teve o acesso liberado, ele não pode passar pela catraca novamente nos próximos 5 minutos.

### 🤖 Uso de Inteligência Artificial
O uso de IA (Copilot, ChatGPT, etc.) é **totalmente permitido e incentivado**! Queremos ver como você utiliza essas ferramentas para ganhar produtividade. No entanto, esteja preparado para explicar as decisões arquiteturais, o raciocínio por trás do código gerado e como você garantiu que a lógica atende aos nossos requisitos.
