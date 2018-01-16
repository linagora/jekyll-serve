# Jekyll 3.7.0 in a Docker Container

Run `jekyll serve` by default with livereload support in a Docker container.

## Getting Started

Assuming Docker and Docker Compose are installed:

```shell
cd dir/of/your/jekyll/site
docker run -p 4000:4000 -p 35729:35729 -v $(pwd):/site linagora/jekyll-serve
```

That's it!

Details: it will mount your current path into the containers `/site`, `bundle install` before running `jekyll serve` to , serve it at `http://localhost:4000`.

To make this even easier, copy `docker-compose.yml` [from this repo](https://github.com/linagora/jekyll-serve/blob/master/docker-compose.yml) to your jekyll site root. Then you'll only need to:

```shell
cd dir/of/your/jekyll/site
docker-compose up
```

## Q&A

**Q. What if I want to run other jekyll commands?**

just add the command to the end (with your -v included) to override the `jekyll serve`:

```shell
docker run -v $(pwd):/site linagora/jekyll-serve jekyll doctor
```
