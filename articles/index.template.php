<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../style.css">
  <title>Cours de PHP</title>
</head>

<body>
  <?php require_once '../header.template.php'; ?>
  <main>

    <h2>Rechercher un article</h2>
    <form action="" method="GET">
      <label for="recherche">Recherche :</label>
      <input type="text" name="recherche" id="recherche">
      <br><br>
</form>
      <h2>Ecrire un Tweet</h2>
        <form class="ecrire" action="ajout.php" method="POST">
          <input type="hidden" name="form" value="formulaire_ajout_article">
           <label for="titre">Titre :</label>
          <br>
          <input type="text" name="titre" id="titre">
          <br>
          <label for="contenu">Contenu :</label>
          <br>
          <textarea name="contenu" id="contenu" cols="30" rows="10"></textarea>
          <br>

          <label for="tag">tag:</label>
        
      <select name="tag" id="tag">
      <option value="">Les tags</option>
      <option value="bleu">News</option>
      <option value="rouge">Infos</option>
      <option value="jaune">Top</option>
      <option value="vert">Aujourd'hui</option>
      </select>

          <input type="submit" value="Envoyer">
        </form>

        <br><br>
        <?php if (
          !empty($titre) && !empty($contenu)
        ): ?>
          <h2>Article :</h2>
          <?= "Titre : $titre" ?>
          <?= "Contenu : $contenu" ?>
        <?php endif; ?>
    </form>
    <h2>Articles<h2>
        <br><br>

        <!-- <h1><?php // "Bonjour, $prenom $nom;" ?></h1>  -->

        <div class="grid">
        <?php foreach ($articles as $article): ?>
          <article> 
          <h3>
            <?php echo $article['titre'] ?>
          </h3>
          <p>
            <?php echo $article['contenu'] ?>
          </p>
          <p>
            <?php echo "Écrit à" . date("d/m/Y", strtotime($article['date'])) .
              " à " . date("H:i", strtotime($article['date'])) ?>
          </p>
          <form action="delete.php" method="post">
            <input type="hidden" name="form" value="formulaire_supp_article">
            <input type="hidden" name="article_id" value="<?php echo $article['id'] ?>">
            <input type="submit" value="Supprimer">
          </form>
          </article>
          <br>
        <?php endforeach; ?>
        </div>


        <br><br>
        <?php if (
          !empty($prenom) && !empty($nom)
          && !empty($message)
        ): ?>
          <h2>Données :</h2>
          <?= "Prénom : $prenom" ?>
          <?= "Nom : $nom" ?>
          <?= "Message : $message" ?>
        <?php endif; ?>

        <br><br>
  </main>
  <?php // require_once "footer.template.php"   
  ?>

</body>

</html>