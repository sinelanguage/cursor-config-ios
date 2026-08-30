---
name: api-contract
description: Define a typed API contract with validation and client helpers.
disable-model-invocation: true
---
# API Contract

Define request and response models, validation, and client usage for an API endpoint.

## When to Use

- Use this skill when adding or updating an API endpoint.
- Use this skill when you need typed request and response models shared across app modules.

## Inputs

- Endpoint path and method
- Request body/query params
- Response shape and error cases
- Auth requirements

## Instructions

1. Define `Codable` request and response models.
2. Add request validation and decoding rules close to the transport layer.
3. Provide a typed client API surface with async error handling.
4. Document error cases, status codes, and retry behavior.

## Output

- Swift models, validation notes, and a typed client function stub.
