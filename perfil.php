<?php
session_start();

// Verifica se o id do usuário está definido na sessão
if (isset($_SESSION['id'])) {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "eventos.sql";
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Verifica se a conexão foi estabelecida com sucesso
    if (!$conn) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    // Guarda o id do usuário na sessão
    $usuario = $_SESSION['id'];

    // Seleciona os dados do usuário pelo id
    $sql = "SELECT nome, email, telefone, genero, data_nascimento, cidade, estado, endereco, senha, foto FROM clientes WHERE id = $usuario";
    $result = $conn->query($sql);

    if ($result === false) {
        die("Erro na consulta: " . $conn->error);
    }

    if ($result->num_rows > 0) {
        // Recupera os dados do usuário e define as variáveis
        $row = $result->fetch_assoc();
        $nome = $row["nome"];
        $email = $row["email"];
        $telefone = $row["telefone"];
        $genero = $row["genero"];
        $data_nascimento = $row["data_nascimento"];
        $cidade = $row["cidade"];
        $estado = $row["estado"];
        $endereco = $row["endereco"];
        $senha = $row["senha"];
        $foto = $row["foto"];
    } else {
        // Se não houver dados, definir as variáveis como vazias
        $nome = "";
        $email = "";
        $telefone = "";
        $genero = "";
        $data_nascimento = "";
        $cidade = "";
        $estado = "";
        $endereco = "";
        $senha = "";
        $foto = "";
        echo "Nenhum resultado encontrado para o ID de usuário: $usuario";
    }

    mysqli_close($conn);
} else {
    // Definir as variáveis como vazias se a sessão não estiver iniciada
    $nome = "";
    $email = "";
    $telefone = "";
    $genero = "";
    $data_nascimento = "";
    $cidade = "";
    $estado = "";
    $endereco = "";
    $senha = "";
    $foto = "";
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./style.css/Style-blue.black.css">
    <link rel="manifest" href="manifest.webmanifest">
</head>
<body>
    <header>
        <h1>Eventos Play</h1>
        <nav>
            <a href="index.html">Inicio</a>
            <a href="contato.html">contato</a>
            <a href="formulario de criar Evento.html" >Criar evento</a>
            <input type="search" id="search" name="categoria" placeholder="🔎Pesquisar...">
            
            <br><br></input>
            <div class="profile">
                <img class="fotoperfil" src="<?php echo htmlspecialchars($foto); ?>" alt="Meu Perfil">
                <p class='textoperfil'><?php echo htmlspecialchars($nome); ?></p>
            </div>
          
        </form>
    </header>
    
    </div>
              </div>
            
            
        </nav>
       
        </div>
    </header>
    <img src="./img/banner.jpg" id="banner">
    <main>
        <div class="cards">
            <span class='title'>Esportes</span>
            <img src="./img/img1.jpg" id="banner">
                <span class="txt">Esportes </span>
                <a  href= "Aplicativo Esportes.html">Clique aqui</a>
            </div>
        </div>

        <div class="cards">
            <span class='title'>Réveillon</span>
            <img src="./img/img2.jpg" id="banner">
                <span class="txt">Réveillon</span>
                <a  href="Réveillon.html" >Clique aqui</a>
            </div>
        </div>

        <div class="cards">
            <span class='title'>Passeios e turs</span>
            <img src="./img/img3.jpg" id="banner">
                <span class="txt">Passeios e turs</span>
                <a  href="Passeios e turs.html" >Clique aqui</a>
            </div>
        </div>

        <div class="cards">
            <span class='title'>Show e Festas</span>
            <img src="./img/img4.jpg" id="banner">
                <span class="txt">Show e Festas</span>
                <a  href="Show e Festas.html" >Clique aqui</a>
            </div>
            <div class="cards">
                <span class='title'>Palestras</span>
                <img src="./img/palestra.jpg" id="banner">
                    <span class="txt">Palestras</span>
                    <a  href="Palestras.html" >Clique aqui</a>
                </div>
            </div>
    
            <div class="cards">
                <span class='title'>Mesa redonda</span>
                <img src="./img/mesa redonda.jpg" id="banner">
                    <span class="txt">Mesa redonda</span>
                    <a  href="mesa redonda.html" >Clique aqui</a>
                </div>
            </div>
    
            <div class="cards">
                <span class='title'>Reuniões</span>
                <img src="./img/reunião.jpg" id="banner">
                    <span class="txt">Reuniões</span>
                    <a  href="reuniões.html" >Clique aqui</a>
                </div>
            </div>
            <div class="cards">
                <span class='title'>Exposições</span>
                <img src="./img/exposições.jpg" id="banner">
                    <span class="txt">Exposições</span>
                    <a  href="Exposições.html" >Clique aqui</a>
                </div>
            </div>
    
            <div class="cards">
                <span class='title'>Eventos gastronômico</span>
                <img src="./img/img8-x.jpg" id="banner">
                    <span class="txt">Eventos gastronômico</span>
                    <a  href="Eventos gastronômico.html" >Clique aqui</a>
                </div>
                <div class="cards">
                    <span class='title'>Eventos Artísticos</span>
                    <img src="./img/img6.jpg" id="banner">
                        <span class="txt">Eventos Artísticos</span>
                        <a  href="Aplicativo Artisticos.html" >Clique aqui</a>
                    </div>
                </div>
               
        
                <div class="cards">
                    <span class='title'>Eventos infantis</span>
                    <img src="./img/img8.jpg" id="banner">
                        <span class="txt">Eventos infantis</span>
                        <a  href="Eventos infantis.html" >Clique aqui</a>
                    </div>
                    <div class="cards">
                        <span class='title'>Eventos Religiosos</span>
                        <img src="./img/Evento religioso.jpg" id="banner">
                            <span class="txt">Eventos Religiosos</span>
                            <a  href="Aplicativo Religioso.html" >Clique aqui</a>
                        </div>
        </div>

    </main>

    <footer>  
        <div class="card-final">
            <span class="title-final">CIDADES</span>
            <ul>
                <li>Natal-RN</li>
                <li>João Pessoa-PB</li>
                <li>Fortaleza-CE</li>
                <li>Recife-PE</li>
            </ul>
        </div>
        <div class="card-final">
            <span class="title-final">SERVIÇOS</span>
            <ul>
                <li>Eventos artísticos</li>
                <li>Passeios turísticos</li>
                <li>Baladas</li>
                <li>Reservas</li>
            </ul>
        </div>
        <div class="card-final">
            <span class="title-final"> CONTATOS</span>
            <ul>
                <li>Carlos Roberto Gomes da Silva</li>
                <li>84 99460-8814</li>
                <li>calosroberto@gmail.com</li>
            </ul>
        </div>
        
           
        </div>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;

            }
            
            header{ background-color: rgb(0, 132, 255);
               /* Cor de fundo do menu */
            }
            
            nav ul {
                list-style-type: none; /* Remove os marcadores de lista */
                margin: 0;
                padding: 0;
                display: flex; /* Exibe os itens na horizontal */
                width: 30%;
            }
            
            nav ul li {
                margin-right: 20px; /* Espaçamento entre os itens */
            }
            
            nav ul li a {
                color: transparent; /* Torna o texto dos links transparente */
                text-decoration: none; /* Remove sublinhado dos links */
                padding: 10px 20px; /* Espaçamento interno */
                transition: background-color 0.3s; /* Transição suave da cor de fundo */
                display: block; /* Faz com que os links ocupem todo o espaço disponível */
            }
    
            nav ul li img {
                width: 40px; /* Ajusta o tamanho das imagens */
                height: 40px;
            }
    
            nav ul li a:hover img {
                filter: brightness(70%); /* Reduz a luminosidade da imagem ao passar o mouse */
            }
    
            nav ul li a:hover {
                background-color: rgb(255, 255, 255); /* Cor de fundo ao passar o mouse */
            }


 .profile {
    display: flex;
    align-items: center;
    margin-left: auto; 
    padding: 10px; 
}

.username {
    color: #ffffff;
    margin-right: 10px;
   
}

.avatar img {
  
    border-radius: 50%; 
  
}
.nome-preto {
    color: #000000; /* Define a cor do texto como preto */
}

.profile {
    display: flex;
    align-items: center;
    margin-left: auto;
    padding: 10px;
}

.username {
    color: #ffffff; /* Cor do texto do nome de usuário */
    font-weight: bold; /* Deixa o texto em negrito */
    margin-right: 10px;
}

.avatar img {
    width: 40px; /* Tamanho da imagem do avatar */
    height: 40px;
    border-radius: 50%; /* Deixa a imagem redonda */
    object-fit: cover; /* Ajusta a imagem para cobrir o espaço definido */
    border: 2px solid #ffffff; /* Adiciona uma borda branca ao redor da imagem */
}

body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .upload-form {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .upload-form label {
            display: block;
            margin-bottom: 10px;
        }

        .upload-form input[type="file"] {
            display: block;
            margin-bottom: 10px;
        }

        .upload-form input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .upload-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
        </style>
    </head>
    <body>
        <nav>
            <ul>
                <li><a href="#"><img src="https://cdn2.iconfinder.com/data/icons/ui-kit-developer-glyphs/16/GlyphIcons-Home-512.png" alt="Home"></a></li>
                <li><a href="#"><img src="https://static.vecteezy.com/system/resources/thumbnails/022/186/053/small/alert-design-info-sign-pro-icon-isolate-with-black-background-png.png" alt="Sobre"></a></li>
                <li><a href="#"><img src="https://cdn-icons-png.flaticon.com/512/75/75668.png" alt="Serviços"></a></li>
                <li><a href="#"><img src="https://cdn-icons-png.freepik.com/256/455/455705.png" alt="Contato"></a></li>
            </ul>
        </nav>
    
        
    </footer>
    <script src="app.js"></script>
    <script src="serviceWorker.js"></script>
</body>
</html>