# Project Ultra-Predictor

## Internal Technical Documentation
**Status:** Production / Stable  
**Owner:** Flavor & Logistics Department (Luminoly Labs)  
**Security Tier:** Level 2 (Internal Sensitive)

### Overview
Ultra-Predictor is a microservice designed to forecast consumer demand for "Ultra-series" beverage flavors using a proprietary Random Forest model. It is deployed as an **Azure Container App** and interacts with Azure Blob Storage for model weights.

### Architecture
* **Frontend:** FastAPI (Python 3.11)
* **Compute:** Azure Container Apps (Serverless)
* **Data:** Model stored in a storage account

### Local Development
```bash
# Install dependencies
pip install -r requirements.txt

# Run the API
uvicorn app.main:app
```

### CI/CD Pipeline

Deployment is automated via GitHub Actions. Any merge into main triggers a build of the Docker image and a release to the luminolycr registry.

© 2026 Luminoly Labs. Confidential and Proprietary.