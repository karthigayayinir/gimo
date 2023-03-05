<p align="center" style="background-color:#040404;padding:20px"><img src="https://www.gimo.co.uk/wp-content/uploads/2022/03/GIMO.png"></p>

# GIMO Books

## Thought process

### *REST API*

**User needs and requirements:** API should search the database on the author & title columns. So decided to keep a GET api endpoint which takes a search string as query param.

**Data sources:** As per suggestion took the data using the openlibrary api & decided to keep a simple table with the columns title(varchar), author(varchar), description(text), publication_year(int). Considering the timeline to complete the assignment and my expertise, i chose to go with MariaDB.

**Search criteria:** The API could allow users to search by author, title. Query does a wild card search on both the columns and sort the result by created_at column.

**Response format:** Response format has been decided to be JSON.

**Security:** I have decided to go with Laravel framework based on my experience. The ORM takes care of data validation and sanitization to prevent SQL injection and other types of attacks.

### *REACT JS*

**User Interface Design:** The requirement wasn't focusing much on the UI design, still decided to go with bootstrap to come up with a decent look and feel. Chose to use `https://react-data-table-component.netlify.app/` data table component to leverage its out of the box sorting, pagination and hook facility customize the data.

**Search Functionality:** Client side rendering application, expected to list the book details, full text search based on title, author, description and filter based on publication year & author.

**Data Management:** The app will store the data from API at redux and all the search & filtered responses will go into local state.

**State Management:** Redux has been selected as the state management library based of its wide range of usage.

**Accessibility:** Bootstrap comes in handy with this aspect.

**Performance:** Finally, the performance of the app is also critical. The app should be designed to load quickly and respond to user actions in a timely manner. This involves optimizing the app's performance through techniques such as code splitting, lazy loading, and memoization.

**Dockerized the application to simplify the deployment.**

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
