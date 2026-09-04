couche silver
prends chaque table brute et transformation en donnée propre (renommage de colonnes, conversion de types, filtres basiques)
un modèle staging = une source

nom du fichier: stg_[<source>__]<entity>.(sql | yml)
<source>: Nom de l'application où provient la donnée brute
<entity>: Nom de l'entité brute transformée en modèle staging