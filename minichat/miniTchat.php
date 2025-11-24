<?php
    require_once 'connexion.php';
    session_start();
    if (!isset($_SESSION['messages_pseudo'])) {
        $_SESSION['messages_pseudo'] = '';
    }
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Mini Tchat</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <form id="formulaire" action="traitementTchat.php" method="post">
        <div id="formPseudo">
            <label>
                Entrez votre pseudo :
                <input type="text" name="pseudo" value="<?php echo $_SESSION['messages_pseudo']?>" required>
            </label>
        </div>
        <div id="formMessage">
            <label>
                Entrez votre message:
                <input type="text" name="message" required>
            </label>
        </div>
        <div id="bouttonSubmit"><button type="submit">Envoyer</button></div>
    </form>
</body>
</html>
<?php
    $reponse = $bdd->query('SELECT messages_pseudo, messages_contenu, DATE_FORMAT(messages_dateM, \'%d/%m/%Y\') AS dateM, DATE_FORMAT(messages_dateM, \'%Hh%imin%ss\') AS dateH FROM messages ORDER BY messages_dateM DESC LIMIT 0, 10');
    while ($donnees = $reponse->fetch()) {
        echo '<p><strong>' . htmlspecialchars($donnees['messages_pseudo']) . '</strong> - ' . $donnees['dateM'] . ' - ' . $donnees['dateH'] . ' : ' . htmlspecialchars($donnees['messages_contenu']) . '</p>';
    }
    $reponse->closeCursor();
?>