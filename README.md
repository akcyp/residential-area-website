# Residential-area-website

Expermimental SSR app for house estate company made with **Nuxt** and **Strapi**.

## Preview

![Screen 1](preview/ss-extra2.jpg)

![Screen 1](preview/ss-extra1.jpg)


## Get started

- Clone this repo:

```bash
git clone https://github.com/akcyp/residential-area-website
```

- Docker auto install:

```bash
cd residential-area-website
docker-compose up --build
```

- Import sample backend data

```bash
docker exec -it $(docker ps -q -f name=residential-area-website-strapi) yarn import:db
```

- Frontend side: [http://localhost/](http://localhost/)

- API: [http://localhost/api/](http://localhost/api/)

- Admin panel: [http://localhost/admin/](http://localhost/admin/)
  - > Username: admin@example.com \
    > Password: AdminPassword1


# Gallery

![Screen 1](preview/ss1.png)

![Screen 2](preview/ss2.png)

![Screen 3](preview/ss3.png)

![Screen 3](preview/ss4.png)
