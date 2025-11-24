<?php
    session_start();
    require_once 'connexion.php';
    $_SESSION['messages_pseudo'] = strip_tags($_POST['pseudo']);
    $req = $bdd->prepare('INSERT INTO messages (messages_pseudo, messages_dateM, messages_contenu) VALUES (?,NOW(),?)');
    $req->execute(array($_SESSION['messages_pseudo'], strip_tags($_POST['message'])));
    header('Location: miniTchat.php');
?>