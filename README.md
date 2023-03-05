<p align="center" style="background-color:#040404;padding:20px"><img src="https://www.gimo.co.uk/wp-content/uploads/2022/03/GIMO.png"></p>

# GIMO Books

## Assumptions & Brief about the solution

- Only books table with few fields as stated
- There will be search functionality on backend & front end
- Front end needs to have text search and filters, so preferred a data table component
- Pagination has been implemented on the Frontend. It is open for extending it to backend based as well
- Dockerized to simplify the deployment

## Prerequisite

Make sure you have [docker](https://docs.docker.com/install/), Git, Node and [docker-compose](https://docs.docker.com/compose/install/) installed on you machine.

1. `git clone`

run following command in terminal / power shell

```
docker-compose up
```

when docker will finish building the containers, access the "laravel app" container using following command

`docker exec -it gimo_lr_app sh`

now you will be inside container

run following commands

1. `composer install && composer update`
2. `php artisan key:gen`
3. `npm install && npm run dev`

open browser and check the following address

`http://localhost:8100`

API endpoint

`http://localhost:8100/api/v1/books/?q=<search text>`

## DATABASE:

\*\*Use any of your favorite DB GUI tool

- host: localhost
- port: 3333
- user name: gimo
- password: gimo123
- database: gimo_books

## SEED DATA REFERENCE:

- https://openlibrary.org/search.json?q=god

## DEMO SCREENS

![Alt text](/public/screenshots/gimo-1.png?raw=true "Home Page")
![Alt text](/public/screenshots/gimo-all-filter.png?raw=true "UI filters title, author, description")
![Alt text](/public/screenshots/gimo-author-filter.png?raw=true "UI filter by Author")
![Alt text](/public/screenshots/gimo-year-filter.png?raw=true "UI filter by publication year")
![Alt text](/public/screenshots/gimo-search-term-api.png?raw=true "API search result")
