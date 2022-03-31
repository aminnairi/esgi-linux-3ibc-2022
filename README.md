# esgi-linux-3ibc-2022

## Lesson 2: hosts

Hosts are aliases that we can use to redirect to any wanted IP address.

```bash
vim /etc/hosts
```

```bash
127.0.0.1 localhost
127.0.0.1 duckduckgo.com
127.0.0.1 ecosia.com
```

A host can have multiple aliases.

```bash
127.0.0.1 localhost localhost.local
```

Browsers are setup to read first the `/etc/hosts` file, this means that we can protect users from accessing dangerous websites.

```bash
127.0.0.1 google.com
127.0.0.1 facebook.com
```

## Exercise

### Exercise 1

Install a web server, either Apache, NGINX or another one of your choice. Edit the host file so that you can access your web server and display a page at http://website.local

### Exercise 2

Prevent users from accessing the following URLs:
- https://www.instagram.com
- https://www.pinterest.com
- https://www.twitter.com
- https://www.tiktok.com


## Next lesson

```bash
git checkout lesson3
```
