crée une vue SQL

avantages:
- Les vues sont mises à jour automatiquement lorsque les données sous-jacentes changent.
- Ne nécessite pas de stockage supplémentaire pour les données transformées.

inconvénients:
- Les vues peuvent être plus lentes à interroger que les tables matérialisées, surtout pour de grandes quantités de données.
- Dépendance continue aux données sous-jacentes, ce qui peut entraîner des problèmes si ces données changent fréquemment.

quand le choisir:
- Lorsque vous avez besoin d'une vue toujours à jour avec les données sous-jacentes.
- Lorsque le stockage supplémentaire pour les données transformées est un problème.
- Lorsque les performances de requête ne sont pas critiques ou que les volumes de données sont relativement petits.

principalement utilisé au niveau staging et intermediate, où la fraîcheur des données est importante mais où le coût de stockage doit être minimisé