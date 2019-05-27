<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <title>Minhas Receitas</title>
    <link rel="shortcut icon" href="assets/img/iconecomida.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="author" content="Aparecida de Cássia R Oliveira">
    <meta name="description" content="site para compartilhamento de receitas.">
    <meta name="keywords" content="receitas, lanches,carnes, massas, comida">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/all.css">
</head>

<body>
    <nav>
        <div>
            <h1> Minhas Receitas</h1>
            <p>Por que a vida é uma delícia</p>
        </div>
        <div><i id="hamburger" class="fas fa-bars fa-2x"></i></div>
        <div>
            <!--adicionar menu futuramente-->
        </div>
    </nav>
    <section  id="imgPrincipal" ></section>

    <section>
        <img src="assets/img/pessoaCozinhando.jpg" alt="pessoa cozinhando, alimentos, comida">
        <h2>Mostre seus talentos culinários</h2>
        <p>Poste aqui suas receitas</p>
    </section>
    <section>
        <img src="assets/img/cozinhareDivertido.jpg" alt="pessoas cozinhando, alimentos, comida">
        <h2> Cozinhar é divertido </h2>
        <p> Dicas de culinária</p>
    </section>
    <section>
        <img src="assets/img/receitas%20campeãs.jpg" alt="comida">
        <h2>Receitas Campeãs</h2>
        <p2> As queridinhas da cozinha</p2>
    </section>

    <footer>
        <div>
            <p>
                <a class="fab fa-github" ></a>
                <a class="fab fa-twitter"></a>
                <a class="fab fa-medium"></a>
            </p>

        </div>
        <div>
            <p><p>Disponibilizado sob a Licença MIT</p></p>
            <p>Copyright  Minhas Receitas <?= date("Y") ?></p>
        </div>
    </footer>
</body>
</html>
