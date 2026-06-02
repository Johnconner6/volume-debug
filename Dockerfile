FROM python:3.11-slim
RUN pip install runpod==1.9.0 --quiet
COPY handler.py /handler.py
CMD ["python", "/handler.py"]
