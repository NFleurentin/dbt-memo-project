créé une table SQL qui est mise à jour de manière incrémentale, ajoutant uniquement les nouvelles données ou les données modifiées depuis la dernière exécution

avantages:
- Les mises à jour incrémentales peuvent améliorer les performances en ne traitant que les nouvelles données.
- Réduit la charge sur le système de stockage et de calcul par rapport à la reconstruction complète de la table.

inconvénients:
- La logique incrémentale peut être complexe à mettre en œuvre correctement.
- Les erreurs dans le processus incrémental peuvent entraîner des incohérences dans les données.

quand le choisir:
- Lorsque vous avez besoin de mettre à jour une table avec de nouvelles données sans reconstruire entièrement la table.
- Lorsque le volume de données est important et que les mises à jour complètes seraient coûteuses en termes de temps et de ressources.
- Lorsque vous pouvez gérer la complexité de la logique incrémentale.

principalement utilisé sur les grosses tables d'événements ou de logs