FROM mcr.microsoft.com/azurelinux/base/python:3.12

WORKDIR /app
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV APP_VERSION="1.2.0-ULTRA"
ENV MODEL_PATH="https://luminolystorage.blob.core.windows.net/models/model.pkl"

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]