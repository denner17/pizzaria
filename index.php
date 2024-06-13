<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="php.css">
    <title>Pizza Kim</title>
</head>
<body>

<header>
    <h1>Pizza Kim</h1>
</header>

<!--RESGISTRO DO USUÁRIO-->
    <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "pizzakim";
        
        //criar a conexão
        $conn = new mysqli($servername, $username, $password, $dbname);

        if($_SERVER["REQUEST_METHOD"] == "POST") {
            $nome = $_POST["nome"];
            $email = $_POST["email"];
            $senha = password_hash($_POST["senha"], PASSWORD_DEFAULT);
            $celular = $_POST["celular"];
            
            
            $sql = "INSERT INTO clientespz (nome, email, senha, celular) VALUES ('$nome', '$email', '$senha', '$celular')";
        
            if ($conn->query($sql) === TRUE) {
                echo "Novo registro criado com sucesso";
            } else {
                echo "Erro" . $sql . "<br>" . $conn->error;
            }
        }
        
        if($_SERVER["REQUEST_METHOD"] == "POST") {
            $endereco = $_POST["endereco"];
            $bairro = $_POST["bairro"];
            $cidade = $_POST["cidade"];
            $cep = $_POST["cep"];
            
            
            $sqlEntrega = "INSERT INTO entrega (endereco, bairro, cidade, cep) VALUES ('$endereco', '$bairro', '$cidade', '$cep')";
        
            if ($conn->query($sqlEntrega) === TRUE) {
                echo "pronto";
            } else {
                echo "Erro" . $sqlEntrega . "<br>" . $conn->error;
            }
        }

            if($_SERVER["REQUEST_METHOD"] == "POST") {
                $promocao1 = $_POST["promocao1"];
                
                
                
                
                $sqlPromocao = "INSERT INTO promocao (promocao1) VALUE ('$promocao1')";

                if ($conn->query($sqlPromocao) === TRUE) {
                    echo "Ok";
                } else {
                    echo "Erro" . $sqlPromocao . "<br>" . $conn->error;
                }
            }

            if($_SERVER["REQUEST_METHOD"] == "POST") {
                $sabor1 = $_POST["sabor1"];
                $sabor2 = $_POST["sabor2"];
                $tamanho = $_POST["tamanho"];
                
                
                
                $sqlSal = "INSERT INTO pizzasalgada (sabor1, sabor2, tamanho) VALUE ($sabor1, $sabor2, $tamanho)";

                if ($conn->query($sqlSal) === TRUE) {
                    echo "Seu pedido foi enviado!";
                } else {
                    echo "Erro" . $sqlSal . "<br>" . $conn->error;
                }
            }

            if($_SERVER["REQUEST_METHOD"] == "POST") {
                $doce1 = $_POST["doce1"];
                $doce2 = $_POST["doce2"];
                $tamanhoDoce = $_POST["tamanhoDoce"];
                
                
                
                $sqlDoce = "INSERT INTO pizzadoce (doce1, doce2, tamanhoDoce) VALUE ($doce1, $doce2, $tamanhoDoce)";

                if ($conn->query($sqlDoce) === TRUE) {
                    echo "Seu pedido foi enviado!";
                } else {
                    echo "Erro" . $sqlDoce . "<br>" . $conn->error;
                }
            }
        $conn->close();
    ?>
<form action="" method="post">
    <div class="containerUsuario">
        <h1>Registro do Usuário</h1>

        
            Nome: <input type="text" name="nome" id="" required autocomplete="off">
            <br>
            E-mail: <input type="email" name="email" id="" required autocomplete="off">
            <br>
            Senha: <input type="password" name="senha" id="" required>
            <br>
            Celular: <input type="text" name="celular" id="" required autocomplete="on">
            <br>

            

    </div>
<!--/RESGISTRO DO USUÁRIO-->



<!--ENTREGA-->

    <div class="containerEntrega">
        <h1>Entrega</h1>

        
            Endereço: <input type="text" name="endereco" id="" required autocomplete="on">
            <br>
            Bairro: <input type="text" name="bairro" id="" required autocomplete="on">
            <br>
            Cidade: <input type="text" name="cidade" id="" required autocomplete="on">
            <br>
            CEP: <input type="text" name="cep" id="" required autocomplete="on">

            
        
    </div>
<!--/ENTREGA-->
  

<!--PROMOÇÃO-->
    
        
        <div class="containerPromocao">
            <h1>Promoção</h1>

            
                <label for="ipromocao">Promoção</label>
                <select name="promocao1" id="">
                    <option text="promocao1">Promoção 1</option>
                    <option text="promocao1">Promoção 2</option>
                    <option text="promocao1">Promoção 3</option>
                </select>

                
            
        </div>
<!--/PROMOÇÃO-->


<!--PIZZA SALGADA-->
        

    <div class="containerSalgada">
        <h1>Pedido Pizza Salgada</h1>

        
            <label for="isabor1">Sabor1:</label>
            <select name="sabor1" id="">          
                <option text="sabor1">Calabresa</option>
                <option text="sabor1">Peperone</option>   
            </select>
            <br>
            
            <label for="isabor2">Sabor2:</label>
            <select name="sabor2" id="">
                <option text="sabor2">Calabresa</option>
                <option text="sabor2">Peperone</option>   
            </select>
            <br>
            
            <label for="itamanho">Tamanho:</label>
            <select name="tamanho" id="">
                
                <option text="30cm">30cm</option>
                <option text="60cm">60cm</option>   
            </select>
            <br>

            
           
        
    </div>
<!--/PIZZA SALGADA-->

<!--PIZZA DOCE-->
        

    <div class="containerDoce">
        <h1>Pedido Pizza Doce</h1>

        
            <label for="idoce1">Sabor1:</label>
            <select name="doce1" id="idoce1">          
                <option text="doce1">Chocolate Preto</option>
                <option text="doce1">Chocolate Branco</option>   
            </select>
            <br>
            
            <label for="idoce2">Sabor2:</label>
            <select name="doce2" id="idoce2">
                <option text="doce2">Chocolate Preto</option>
                <option text="doce2">Chocolate Branco</option>   
            </select>
            <br>
            
            <label for="itamanhoDoce">Tamanho:</label>
            <select name="tamanhoDoce" id="itamanhoDoce">
                
                <option text="30cm">30cm</option>
                <option text="60cm">60cm</option>   
            </select>
            <br>

            
            <input class="btn" type="submit" value="Enviar">
        
    </div>

</form>
<!--/PIZZA DOCE-->
</body>
</html>