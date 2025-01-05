# LangGraph-GUI-backend/Dockerfile
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all files to the /app directory
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

ENV OLLAMA_BASE_URL=http://localhost:11434
ENV OLLAMA_MODEL_NAME=gemma2:2b

# Change to the src/workspace directory and run the server
WORKDIR /app/src/workspace
CMD ["python", "../server.py"]
