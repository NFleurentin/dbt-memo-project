contient la configuration du projet dbt, y compris les chemins des modèles, les paramètres de connexion à la base de données, et d'autres options globales pour le projet.

exemple:

models:
  <nom_projet>:
    <nom_dossier>:
      +materialized: (view | table | incremental | ephemeral)