# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Αντιγραφή του αρχείου app.py στον φάκελο /app στον container
COPY src/app.py /app/

# Εκτέλεση του αρχείου app.py
CMD ["python", "/app/app.py"]
