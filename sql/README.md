# Vos scripts SQL

Ajoutez ici les fichiers qui créent et remplissent votre table : ils vous serviront à rejouer
vos données et à les tester.

Deux exigences qui reviennent dans les critères d'acceptation :

- **rejouables** : les relancer sur un poste où tout existe déjà ne doit pas planter ;
- **cumulatifs** : joués dans l'ordre sur une machine vierge, ils doivent reconstituer la base
  entière.

Jouez-les avec `ON_ERROR_STOP`, sinon `psql` continue après une erreur et vous laisse croire
que tout s'est bien passé. Exemple :

```sh
psql -U postgres -v ON_ERROR_STOP=1 -f votre-script.sql
```
pour le premier script, puis une fois la base crée : 
```sh
psql -U postgres -d trombifunscope -v ON_ERROR_STOP=1 -f votre-script.sql
```


**La table s'appelle `student`**. Le code fourni compte les
fiches avec un `SELECT count(*) FROM student`. Si vous avez appelé votre table différemment, à vous de faire le nécessaire.

## Éxecution des scripts SQL

1. Ouvrir un terminal à la racine du projet.
2. Exécuter `psql -U postgres -f sql/01_init_database.sql`.
3. Saisir le mot de passe PostgreSQL : la base et les deux rôles sont alors initialisés.