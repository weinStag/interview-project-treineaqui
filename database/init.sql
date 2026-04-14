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
  status_ativo TINYINT(1) NOT NULL DEFAULT 1,
  plano_id INT NOT NULL,
  CONSTRAINT fk_aluno_plano FOREIGN KEY (plano_id) REFERENCES planos(id)
);

INSERT INTO planos (nome, hora_inicio, hora_fim) VALUES
  ('Plano Básico', '06:00:00', '10:00:00'),
  ('Plano Intermediário', '06:00:00', '18:00:00'),
  ('Plano Premium', '00:00:00', '23:59:59');
