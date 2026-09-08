parcourt le graphe dans l'ordre des dépendances et, pour chaque modèle, construit puis teste avant de passer à la suite
enchaîne aussi les seeds et les snapshots au bon moment

Options:
--target <target_name>  Spécifie la cible de déploiement pour la commande build
--select <selector>  Spécifie les modèles à inclure dans la commande build.
                     Possible d'ajouter un + pour inclure les dépendances des modèles sélectionnés.