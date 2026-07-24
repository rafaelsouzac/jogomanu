# Contexto
Você atuará como um DBA Sênior em MariaDB versão 10.4.32.
Você escreverá uma query para atender as regras de negócio.

## Regras de Negócio
1. Criar uma view com nome `vw_estatistica_repostas`.

2. Essa view tera os seguintes campos: `fk_quiz`, `resposta_usuario`,
`resposta_correta`, `correta_incorreta`.

3. O campo `correta_incorreta` é um campo calculado. Compare a respota do usuário armazenada na tabela `gabaritos` no campo `fk_resposta` com o campo `status` na tabela `respostas`. Utilize para o join o campo `fk_pergunta`

4. Utilize as informações das tabelas abaixo para executar o solicitado.

## Tabelas

### Tabela: `gabaritos`

| Campo | Tipo | Restrição | Descrição |
| :--- | :--- | :--- | :--- |
| `pk_gabarito` | INT(11) | **PK**, NOT NULL, AUTO_INCREMENT | Identificador único do gabarito |
| `fk_quiz` | INT(11) | **FK**, NOT NULL | ID do quiz associado (Tabela: `quizes`) |
| `fk_pergunta` | INT(11) | **FK**, NOT NULL | ID da pergunta associada (Tabela: `perguntas`) |
| `fk_respota` | INT(11) | **FK**, DEFAULT NULL | ID da resposta correta (Tabela: `respostas`) |

#### Chaves Estrangeiras e Regras de Negócio

* **`fk_gabarito_resposta`**: Se a resposta for excluída ou atualizada, as alterações serão aplicadas em cascata (`CASCADE`).
* **`fk_gabaritos_perguntas1`**: Bloqueia a exclusão ou atualização da pergunta se houver um gabarito vinculado (`NO ACTION`).
* **`fk_gabaritos_quiz1`**: Bloqueia a exclusão ou atualização do quiz se houver um gabarito vinculado (`NO ACTION`).

### Tabela: `perguntas`

| Campo | Tipo | Restrição | Descrição |
| :--- | :--- | :--- | :--- |
| `pk_pergunta` | INT(11) | **PK**, NOT NULL, AUTO_INCREMENT | Identificador único da pergunta |
| `enunciado` | TEXT | NOT NULL | Texto com a descrição ou corpo da pergunta |
| `temimagem` | CHAR(1) | NOT NULL, DEFAULT '0' | Indicador se a pergunta possui imagem ('0' para não, '1' para sim) |
| `fk_conteudo` | INT(11) | **FK**, NOT NULL | ID do conteúdo associado (Tabela: `conteudos`) |

#### Chaves Estrangeiras e Regras de Negócio

* **`fk_conteudo_pergunta`**: Bloqueia a exclusão ou atualização do conteúdo se houver alguma pergunta vinculada a ele (`NO ACTION`).

### Tabela: `respostas`

| Campo | Tipo | Restrição | Descrição |
| :--- | :--- | :--- | :--- |
| `pk_resposta` | INT(11) | **PK**, NOT NULL, AUTO_INCREMENT | Identificador único da resposta |
| `fk_pergunta` | INT(11) | **FK**, NOT NULL | ID da pergunta associada (Tabela: `perguntas`) |
| `status_resposta` | CHAR(1) | NOT NULL | Situação da resposta ('I' para incorreta, 'C' para correta) |
| `temimagem` | CHAR(1) | NOT NULL, DEFAULT '0' | Indicador se a resposta possui imagem ('0' para não, '1' para sim) |
| `enunciado_resposta`| VARCHAR(1020) | DEFAULT NULL | Texto descritivo da alternativa de resposta |

#### Chaves Estrangeiras e Regras de Negócio

* **`fk_resp_perg`**: Se uma pergunta for excluída, todas as suas respostas relacionadas serão removidas automaticamente em cascata (`CASCADE`).
