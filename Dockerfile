FROM runpod/base:0.6.2-cuda11.8.0
RUN pip install runpod==1.9.0 --quiet
COPY handler.py /handler.py
CMD ["python", "/handler.py"]
