tester ce qui casse, à l'endroit où ça compte
sur chaque modèle, teste au minimum sa clé primaire (unique + not_null)

staging => unique et not_null sur les clés, accepted_values sur les colonnes à valeurs fermées (statuts, types)
intermediate / mart => relationships entre les tables, et les règles métier en tests singuliers