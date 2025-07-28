FROM alpine/git AS downloader
WORKDIR /
RUN git clone https://github.com/snailyp/gemini-balance.git

WORKDIR /gemini-balance
RUN cp .env.example .env && \
    sed -i 's/DATABASE_TYPE=mysql/DATABASE_TYPE=sqlite/' .env && \
    sed -i 's/#SQLITE_DATABASE=default_db/SQLITE_DATABASE=default_db/' .env

FROM python:slim

WORKDIR /app

COPY --from=downloader /gemini-balance /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--no-access-log"]
