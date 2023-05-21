<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
    el="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" 
    crossorigin="anonymous">
    <title>Mon Twitter</title>
</head>
<body>
    <!-- <h1><?php echo "Bonjour, $prenom"; ?></h1> -->
    <!-- <h3><?= "Bonsoir, $prenom" ?></h3>   -->
<?php require_once'header.template.php'; ?>
<main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> 

<h2>Nouveau compte</h2>
        <form action="user.php" method="POST" class="nouveau_compte" >
          <input type="hidden" name="form" value="formulaire_ajout_user">
          <label for="nom">nom :</label>
          <br>
          <input type="text" name="nom" id="nom">
          <br>
          <label for="pseudo">pseudo :</label>
          <br>
          <input type="text" name="pseudo" id="pseudo">
          <br>
          <label for="mail">mail :</label>
          <br>
          <input type="text" name="mail" id="mail">
          <br>
          <label for="password">password :</label>
          <br>
          <input type="password" name="password" id="password">
          <br>
          <label for="photo">photo :</label>
          <br>
          <input type="text" name="photo" id="photo">
          <br>
          <input type="submit" value="Envoyer">
        </form>

</main>

<?php  require_once "footer.template.php" ?>;

</body>
</html>