# WEB PROJECT ESTRATEGIA LAC - ICANN

## Installation global requeriments
- Npm
- Docker
- Docker Compose
- Gulp

## Project setup
```
cp .env.example .env
```
```
npm install
```
```
docker-compose up -d
```

### Compiles assets and hot-reloads for development
```
gulp
```

## Backups of add-ons, database and media
- Go to admin [localhost:3000/redaxo](http://localhost:3000/redaxo)

>User: admin <br>
>Pass: admin

- Install and activate the required [AddOns](https://redaxo.org/doku/master/basis-addons) (
Always check if a new add-on was added)
> - phpmailer
> - yform
> - yrewrite
> - redactor2
- Copy backups of database and media (You may have to copy in root mode)
```
cp backups/lacdb.sql html/redaxo/data/addons/backup
```
```
cp backups/media/* html/media
```
Import [backup database](https://redaxo.org/doku/master/backup#fromserver) from the server
> Import example:

![backup from server](https://redaxo.org/doku/master/assets/v5.2.0-backup-04-fromserver.png)

