# PricScraper
## How to run
Build image (need to be in working dir of Dockerfile)
`docker build -t price-scraper .`

Run image with hot-reloading
`docker run -d -p 80:80 -v $(pwd)/app:/app -e FLASK_APP=main.py -e FLASK_DEBUG=1 price-scraper flask run --host=0.0.0.0 --port=80`

