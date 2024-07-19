CREATE TABLE fato_cursos (
    id_curso INT PRIMARY KEY,
    id_municipio INT,
    id_curso_info INT,
    id_reconhecimento INT,
    data_inicio_funcionamento DATE,
    portaria_reconhecimento VARCHAR(255),
    -- Adicione outras métricas relevantes
    FOREIGN KEY (id_municipio) REFERENCES dim_municipio(id_municipio),
    FOREIGN KEY (id_curso_info) REFERENCES dim_curso_info(id_curso_info),
    FOREIGN KEY (id_reconhecimento) REFERENCES dim_reconhecimento(id_reconhecimento)
);

CREATE TABLE dim_municipio (
    id_municipio INT PRIMARY KEY,
    municipio VARCHAR(255),
);

CREATE TABLE dim_curso_info (
    id_curso_info INT PRIMARY KEY,
    nome_curso VARCHAR(255),
    modalidade_curso VARCHAR(50),
    grau_curso VARCHAR(50),
    ensino VARCHAR(50),
    eixo_conhecimento VARCHAR(255)
);

CREATE TABLE dim_reconhecimento (
    id_reconhecimento INT PRIMARY KEY,
    portaria_reconhecimento VARCHAR(255),
);

CREATE TABLE fato_matriculas (
    matricula VARCHAR(255) PRIMARY KEY,
    id_curso INT,
    modalidade_entrada VARCHAR(255),
    ano_ingresso INT,
    data_colacao_grau DATE,
    situacao_matricula VARCHAR(255),
    sexo CHAR(1),
    prazo_conclusao INT,
    data_registro_diploma DATE,
    FOREIGN KEY (id_curso) REFERENCES dim_cursos(id_curso)
);

CREATE TABLE dim_cursos (
    id_curso INT PRIMARY KEY,
    curso VARCHAR(255)
);

