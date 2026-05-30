FROM runpod/base:0.6.2-cuda11.8.0
RUN pip install runpod==1.7.9 --quiet
COPY handler.py /handler.py
CMD ["python", "/handler.py"]
