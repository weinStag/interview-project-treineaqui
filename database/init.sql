CREATE TABLE IF NOT EXISTS planos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  hora_inicio TIME NOT NULL,
  hora_fim TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  cpf VARCHAR(14) NOT NULL UNIQUE,
  cep VARCHAR(9) NOT NULL,
  logradouro VARCHAR(255) NOT NULL,
  bairro VARCHAR(100) NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  uf CHAR(2) NOT NULL,
  status_ativo TINYINT(1) NOT NULL DEFAULT 1,
  plano_id INT NOT NULL,
  CONSTRAINT fk_aluno_plano FOREIGN KEY (plano_id) REFERENCES planos(id)
);

-- Seed de planos
INSERT INTO planos (id, nome, hora_inicio, hora_fim) VALUES
  (1, 'Integral', '00:00:00', '23:59:59'),
  (2, 'Manhã',    '06:00:00', '12:00:00'),
  (3, 'Noite',    '18:00:00', '22:00:00');

-- Seed de alunos para facilitar testes
-- João  → plano Integral (sempre acessível)
-- Maria → plano Manhã    (acessível 06–12h; nega fora do horário)
-- Pedro → inativo        (sempre negado independente de horário)
INSERT INTO alunos (nome, cpf, cep, logradouro, bairro, cidade, uf, status_ativo, plano_id) VALUES
  ('João Silva',    '111.111.111-11', '01001-000', 'Praça da Sé',      'Sé',        'São Paulo', 'SP', 1, 1),
  ('Maria Souza',   '222.222.222-22', '02002-000', 'Rua Voluntários',  'Santana',   'São Paulo', 'SP', 1, 2),
  ('Pedro Inativo', '333.333.333-33', '03003-000', 'Av Paulista',      'Bela Vista','São Paulo', 'SP', 0, 3);