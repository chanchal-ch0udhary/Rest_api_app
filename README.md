# Versioned REST API with Rails

A JSON REST API built in **Rails 7 API mode** with **PostgreSQL**. It shows namespaced versioning (`/api/v1`), serializers, strong parameters and consistent JSON error responses.

![Ruby](https://img.shields.io/badge/Ruby-3.0.2-CC342D?logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/Rails-7.1-CC0000?logo=rubyonrails&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?logo=postgresql&logoColor=white)

## Highlights

- Namespaced, versioned routes: `Api::V1::UsersController`, `Api::V1::FactsController`
- Response shaping with **ActiveModelSerializers**
- Strong parameters and `before_action` record lookup
- Explicit HTTP status codes and JSON error bodies

## Endpoints

| Method | Path | Description |
| --- | --- | --- |
| `GET` | `/api/v1/users` | List users |
| `GET` | `/api/v1/users/:id` | Show a user |
| `POST` | `/api/v1/users` | Create a user |
| `PUT` | `/api/v1/users/:id` | Update a user |
| `DELETE` | `/api/v1/users/:id` | Delete a user |
| `GET` | `/api/v1/facts` | List facts |
| `GET` | `/api/v1/facts/:id` | Show a fact |
| `POST` | `/api/v1/facts` | Create a fact |
| `PUT` | `/api/v1/facts/:id` | Update a fact |
| `DELETE` | `/api/v1/facts/:id` | Delete a fact |

### Example

```bash
curl -X POST http://localhost:3000/api/v1/facts \
  -H "Content-Type: application/json" \
  -d '{"fact": {"fact": "Ruby was created in 1995", "likes": 0, "user_id": 1}}'
```

## Getting started

```bash
git clone https://github.com/chanchal-ch0udhary/Rest_api_app.git
cd Rest_api_app
bundle install
bin/rails db:create db:migrate
bin/rails server
```
