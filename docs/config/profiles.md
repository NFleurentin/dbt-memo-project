contient la configuration des profils dbt, incluant les informations de connexion à la base de données, les schémas cibles et les paramètres spécifiques à chaque environnement
est généralement situé dans le répertoire `~/.dbt/` et permet de définir plusieurs profils pour différents environnements (développement, test, production)

définir une connexion duckdb:
<nom_projet>:
  target: dev
  outputs:
    dev:
      type: duckdb
      path: <chemin_vers_la_base_de_donnees.duckdb>
      [schema: <nom_du_schema>] -- Par défaut main
      [threads: 4]
      [attach: -- Liste des bases de données attachées
        - path: <chemin_vers_la_base_de_donnees_attachée.duckdb>
      ]