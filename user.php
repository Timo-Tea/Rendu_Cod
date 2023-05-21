<?php

require_once 'database.php';

if ($_SERVER['REQUEST_METHOD'] === "POST") {            // c pour se faire un compte  ( ça vas se rajouter dans ma base de donné )
    if (
        isset($_POST['form'])
        && $_POST['form'] === "formulaire_ajout_user"
    ) {
        if (
            !empty($_POST['nom']) &&
            !empty($_POST['pseudo']) &&
            !empty($_POST['mail']) &&
            !empty($_POST['password']) &&
            !empty($_POST['photo'])
        ) {
            $data = [
                'nom' => $_POST['nom'],
                'pseudo' => $_POST['pseudo'],
                'mail' => $_POST['mail'],
                'password'=>password_hash($_POST['password'], PASSWORD_DEFAULT),     //c pour crypter le mdp 
                'photo' => $_POST['photo'],
            ];
            $request = $database->prepare("INSERT INTO users (nom, pseudo, mail, password, photo)
                                         VALUES (:nom, :pseudo, :mail, :password, :photo)");
            $request->execute($data);
            header("Location: index.php");
        }   
    }
}

?>