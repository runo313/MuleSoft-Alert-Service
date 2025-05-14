

This project is a MuleSoft application for real-time temperature monitoring, threshold-based alerts, and historical reporting. It integrates IoT data pipelines, multi-channel notifications, and dynamic data retrieval features through a secure and modular RESTful API.

---

## Project Overview

This service collects temperature and humidity sensor data streamed via Apache Kafka, stores it in a PostgreSQL database using a Java microservice, and exposes REST endpoints built with MuleSoft for:
- Fetching real-time and historical sensor data
- Subscribing/unsubscribing clients for alerts
- Sending notifications via Slack, Email (SendGrid), or SMS (Twilio/optional)
- Downloading archived reports from Amazon S3

---

## Features

- Real-time sensor ingestion and streaming using Kafka
- Kafka-to-PostgreSQL storage via Java microservice
- RESTful API with RAML spec
- Multi-format data output (JSON, XML, YAML, CSV, XLSX)
- Secure endpoints (OAuth 2.0 and Client ID/Secret)
- Alerting with retry & fallback logic
- Archiving old data to Amazon S3
- API auto-discovery and policy enforcement via API Manager
- Monitoring with Health & Readiness endpoints

---

## Technologies Used

- **MuleSoft Anypoint Platform** (APIkit, Studio, Manager)
- **Apache Kafka**
- **Java** (Kafka Consumer Microservice)
- **PostgreSQL**
- **Amazon S3**
- **SendGrid** (for email alerts)
- **Slack Webhooks**
- **MUnit** (for automated testing)
- **OAuth 2.0**
- **RAML** for API Specification
- **CloudHub** for deployment

---

## API Endpoints (REST)

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/sensor-data/{format}` | GET | Retrieve sensor readings in specified format (json/xml/csv/yaml/xlsx) |
| `/subscribe` | POST | Register client alert preferences |
| `/update/{clientId}` | PUT | Update client alert preferences |
| `/unsubscribe/{clientId}` | DELETE | Remove client from alerts |
| `/reports` | GET | List archived data files in S3 |
| `/reports/{year}/{month}/{filename}` | GET | Download archived CSV |
| `/health` | GET | Liveness check of application |
| `/ready` | GET | Readiness check for dependencies like DB, Kafka, and REST APIs |

---
