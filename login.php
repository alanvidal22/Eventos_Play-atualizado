<?php
$host = "localhost";
$username = "root";
$password = "";
$dbname = "eventos.sql";

// Criar uma conexão com o banco de dados
$conn = mysqli_connect($host, $username, $password, $dbname);

// Verificar se a conexão foi bem-sucedida
if (!$conn) {
    die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
}

// Verificar se os dados do formulário foram enviados
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Obter os valores dos campos de entrada e sanitizar os dados
    $nome = trim($_POST['nome']);
    $senha = trim($_POST['senha']);

    // Verificar se os campos não estão vazios
    if (!empty($nome) && !empty($senha)) {
        // Usar consulta preparada para evitar injeção SQL
        $stmt = mysqli_prepare($conn, "SELECT * FROM clientes WHERE nome = ? AND senha = ?");
        mysqli_stmt_bind_param($stmt, "ss", $nome, $senha);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        // Verificar se há algum resultado
        if (mysqli_num_rows($result) > 0) {
            // Redirecionar para a página perfil
            header('Location: perfil.php');
        } else {
            // Redirecionar para a página de erro
            header('Location: nome_ou_senha_incorreto.html');
        }

        // Fechar o resultado da consulta e o statement
        mysqli_free_result($result);
        mysqli_stmt_close($stmt);
    } else {
        // Redirecionar para a página de erro se o nome ou a senha estiverem vazios
        header('Location: erro_cad_usuario.html');
    }
}

// Fechar a conexão com o banco de dados
mysqli_close($conn);
?>


