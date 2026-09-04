couche bronze
est dans son état brut, sans transformation
ce sont des sources dans dbt

nom fichier: _[<source>__]source.yml
<source>: Nom de l'application où provient les données

yml:
  version: 2

  sources:
    - name: <nom_source>
      tables:
        - name: <nom_table>
          description: "<description_de_la_table>"
          config:
            #Chargement externe
            external_location: "{{ env_var('<NOM_DU_CHEMIN>') }}"
            
            #Vérifie la fraîcheur des données
            loaded_at_field: "<nom_du_champ_de_chargement>"
            freshness:
                warn_after: { count: 12, period: hour }
                error_after: { count: 24, period: hour }