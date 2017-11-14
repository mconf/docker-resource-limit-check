FROM python

ADD . .

CMD ["python", "./eat_memory.py"]
