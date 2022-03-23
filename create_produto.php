<?php

// Faz conexão com banco de dados e configurações
require('conn.php');

// Dados para inserção. Ex.: vindos de um formulário.
$nome = '';
$preco = '';
$embalagem = '';
$status = '';

    // Escrever a query
    $sql = <<<SQL

INSERT INTO produto ( nome, preco, embalagem, status) VALUES 
(
    '{$nome}',
    '{$preco}',
    '{$embalagem}')
    '{$status}')
);

SQL;

// Executar a query
$conn->query($sql);

echo "{$nome} adicionado com sucesso!";
