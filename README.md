# Pro Football Reference Player Scraper

Scrapes player statistics from Pro-Football-Reference using FlareSolverr to bypass Cloudflare protections.

## Features
- Fetch full player stat tables (passing, rushing, receiving, defense, etc.)
- Uses FlareSolverr Docker service
- Outputs structured JSON
- Designed for AWS hosting (EC2 / ECS)

## Stack
- Python 3.11
- requests
- BeautifulSoup
- FlareSolverr

## Setup

### 1. Run FlareSolverr

```bash
docker run -d -p 8191:8191 --name flaresolverr ghcr.io/flaresolverr/flaresolverr:latest
```

### 2. Install dependencies

```bash
pip install -r requirements.txt
```

### 3. Run scraper

```bash
python scraper.py https://www.pro-football-reference.com/players/B/BradTo00.htm
```

## Output

JSON file with all parsed stat tables.

## AWS Deployment

Recommended:
- EC2 instance
- Docker for FlareSolverr
- Python service for scraping

