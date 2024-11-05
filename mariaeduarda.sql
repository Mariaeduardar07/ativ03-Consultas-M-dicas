CREATE DATABASE hospital;

\c hospital;

CREATE TABLE pacientes ( 
    id_paciente SERIAL PRIMARY KEY,
    nome_completo VARCHAR(140) NOT NULL,
    cpf INT,
    email VARCHAR(130) UNIQUE NOT NULL,
    sintoma VARCHAR(150)
);

CREATE TABLE medicos (
    id_medico SERIAL PRIMARY KEY,
    nome_completo VARCHAR(140) NOT NULL,
    especialidade VARCHAR(130) NOT NULL,
    crm INT
);

CREATE TABLE consultas (
    id_consulta SERIAL PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    data_consulta DATE NOT NULL,
    horario_consulta TIME NOT NULL
);