FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY scraper.py .
ENV FLARESOLVERR_URL=http://flaresolverr:8191/v1
ENTRYPOINT ["python","scraper.py"]
