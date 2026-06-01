# OpenAI API Data Controls / Your Data — Markdown Evidence Extract

Source URL: https://developers.openai.com/api/docs/guides/your-data  
Retrieved via ChatGPT web tool: 2026-06-01  
Role in evidence pack: Primary API retention, logging, training-use, endpoint retention and data residency evidence.

## Key extracted evidence

- Data sent to the OpenAI API is not used to train or improve OpenAI models unless the customer explicitly opts in.
- API data may be stored as abuse monitoring logs or application state.
- Abuse monitoring logs are generated from platform use to enforce usage policies and mitigate harmful uses of AI.
- Abuse monitoring logs may contain customer content such as prompts and responses, and metadata derived from customer content such as classifier outputs.
- By default, abuse monitoring logs are generated for all API feature usage and retained for up to 30 days, unless longer retention is required by law or reasonably necessary to protect services or third parties from harm.
- Eligible customers may have customer content excluded from abuse monitoring logs by approval for Zero Data Retention (ZDR) or Modified Abuse Monitoring (MAM), subject to prior OpenAI approval and additional requirements.
- Modified Abuse Monitoring excludes customer content from abuse monitoring logs across API endpoints, except image/file inputs in rare cases described in the source.
- Zero Data Retention excludes customer content from abuse monitoring logs and changes endpoint behavior: the `store` parameter for `/v1/responses` and `/v1/chat/completions` is treated as `false`.
- Endpoint retention varies by endpoint.
- `/v1/chat/completions`: no data used for training; 30-day abuse monitoring retention; no application state by default; ZDR eligible with limitations.
- `/v1/responses`: no data used for training; 30-day abuse monitoring retention; no application state by default; ZDR eligible with limitations.
- `/v1/assistants`, `/v1/threads`, and `/v1/vector_stores`: no data used for training; abuse monitoring retention may apply; application state retained until deleted; not ZDR eligible.
- `/v1/embeddings`: no data used for training; 30-day abuse monitoring retention; no application state; ZDR eligible.
- `/v1/files`: no data used for training; 30-day abuse monitoring retention; application state retained until deleted; not ZDR eligible.
- Objects related to Assistants API are deleted from OpenAI servers 30 days after deletion via API or dashboard; objects not deleted are retained indefinitely.
- Files can be manually deleted via API/dashboard or automatically deleted with the `expires_after` parameter.
- Image and file inputs may be uploaded to `/v1/responses`, `/v1/chat/completions`, and `/v1/images` and are scanned for CSAM on submission. If potential CSAM is detected, the image may be retained for manual review even with ZDR or MAM enabled.
- Australia has regional storage but not regional processing. The data residency table shows Australia requires Modified Abuse Monitoring or ZDR and uses `au.api.openai.com`.
- Non-US regions may have endpoint limitations, including that `/v1/chat/completions` cannot set `store=true` in non-US regions.

## Endpoint retention table extract

| Endpoint | Training use | Abuse monitoring retention | Application state | ZDR eligible |
|---|---:|---:|---:|---:|
| `/v1/chat/completions` | No | 30 days | None / exceptions | Yes, with limitations |
| `/v1/responses` | No | 30 days | None / exceptions | Yes, with limitations |
| `/v1/conversations` | No | Until deleted | Until deleted | No |
| `/v1/assistants` | No | 30 days | Until deleted | No |
| `/v1/threads` | No | 30 days | Until deleted | No |
| `/v1/vector_stores` | No | 30 days | Until deleted | No |
| `/v1/images/generations` | No | 30 days | None | Yes, with limitations |
| `/v1/embeddings` | No | 30 days | None | Yes |
| `/v1/audio/transcriptions` | No | None | None | Yes |
| `/v1/audio/translations` | No | None | None | Yes |
| `/v1/audio/speech` | No | 30 days | None | Yes |
| `/v1/files` | No | 30 days | Until deleted | No |
| `/v1/moderations` | No | None | None | Yes |
| `/v1/completions` | No | 30 days | None | Yes |

## Recommended BecomingOS scope based on this evidence

- Prefer text-only `/v1/responses` or `/v1/chat/completions` with `store=false`.
- Embeddings may be considered only for confirmed eligible memory and only after internal invalidation/deletion workflow is implemented.
- Exclude vector stores, assistants, threads, conversations, files, images, audio, video, web search, remote MCP, and beta/preview features unless separately reviewed and approved.

## Approval note

This source provides strong evidence for API training-use, retention, endpoint retention and data residency, but owner approval is still required.
