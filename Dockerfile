FROM python:3.10

RUN pip install flask requests uwsgi

COPY ./app /app
WORKDIR /app

ENV PYTHONPATH=/app

EXPOSE 80

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
# CMD ["/app/start.sh"]
ENTRYPOINT [ "/app/start.sh" ]