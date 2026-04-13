# ==========================================
# STAGE 1: Builder
# ==========================================
FROM python:3.11-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --user --no-cache-dir -r requirements.txt

# ==========================================
# STAGE 2: Production
# ==========================================
FROM python:3.11-slim

WORKDIR /app

# Copiar dependencias del stage anterior
COPY --from=builder /root/.local /root/.local

# Copiar código de la aplicación
COPY app.py .

# Variables de entorno
ENV PATH=/root/.local/bin:$PATH
ENV FLASK_ENV=production

# Puerto de la aplicación
EXPOSE 5000

# Comando de inicio
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
