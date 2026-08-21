## 2026-08-21 18:13:04 UTC [www] (model bigpickle)
[NEW] www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
[NEW] support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
[NEW] dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
[NEW] youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
[NEW] app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
[CHANGED] github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
[CHANGED] trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added
[PRIO] dmarcreport.com API | score 6.90 | attack_surface 8 business_value 8 tech_exposure 6 (token-auth REST + MCP client) gate_ease 4 (needs account/API key) cloud_surface 5 freshness 9
[PRIO] support.dmarcreport.com | score 5.70 | attack_surface 6 business_value 5 tech_exposure 5 (SaaS helpdesk, likely sequential IDs) gate_ease 8 (public) cloud_surface 3 freshness 7
[PRIO] www.duocircle.com markdown/agent-skills surface | score 5.40 | attack_surface 5 business_value 5 tech_exposure 3 gate_ease 9 (no auth) cloud_surface 2 (Vercel-managed) freshness 9 (newly deployed)
[PRIO] github.com/duocircle/phishredirector | score 5.25 | attack_surface 6 business_value 5 tech_exposure 5 (stale PHP, 2021, unarchived) gate_ease 9 (public clone) cloud_surface 2 freshness 2
[HYP] DMARCReport API cross-tenant report access (IDOR)
class: IDOR
asset: dmarcreport.com API (endpoints enumerated by duocircle/dmarcreport-mcp)
confidence: 55
reasoning: Multi-tenant DMARC SaaS exposes token-authed REST covering per-customer domains, aggregate and forensic reports; MCP client documents full passthrough coverage. Per-token tenant scoping is unverified; report/domain object IDs are the classic weak point.
evidence_needed: HTTP 200 response from token A returning tenant B's domain/report object (or proof every lookup re-validates ownership).
verify_steps: PASSIVE: read dmarcreport-mcp source for exact endpoint paths and query params; then AUTH_HELPED: register two trial accounts, use token A to request own objects vs. tenant B's domain/report identifiers (GET only, ≤1 rps), diff responses.
impact: Cross-tenant read of customer DMARC/forensic data (sending infrastructure, internal hosts) — High.
testability: AUTH_HELPED
[HYP] Support-desk ticket/article/attachment access-control gap
class: IDOR
asset: support.dmarcreport.com
confidence: 45
reasoning: Public helpdesk serving sequential KB IDs (…/solutions/articles/5000873350); such desks commonly expose adjacent ticket/attachment resources if ACL defaults are permissive. Vendor unidentified — fingerprinting needed first.
evidence_needed: One resource (ticket body/attachment) retrievable without an owning session, or vendor banner enabling targeted known-CVE checks.
verify_steps: PASSIVE: GET https://support.dmarcreport.com/support/solutions/articles/5000873350-api-tokens; fingerprint vendor from HTML generators/meta; probe public search/list endpoints and HEAD adjacent article IDs for ACL uniformity (≤1 rps).
impact: Exposure of other customers' tickets (domains, mail configs, token snippets) — Medium.
testability: PASSIVE
[HYP] New markdown/agent-skills routes leak non-public artifacts
class: MISCONFIG
asset: www.duocircle.com (/llms.txt, /index.md, /.well-known/agent-skills/*)
confidence: 50
reasoning: Link headers advertise machine-readable mirrors of pages on a fresh Vercel deploy (last-modified today); new static pipelines sometimes publish drafts, internal-route docs, or sourcemaps alongside intended marketing markdown.
evidence_needed: Any served file not intended for publication (draft/internal page markdown, .map, admin-route doc), or confirmation the published file set is marketing-only.
verify_steps: PASSIVE: GET https://www.duocircle.com/llms.txt; GET https://www.duocircle.com/.well-known/agent-skills/markdown-negotiation/SKILL.md; enumerate files they reference; HEAD each for unintended content/sourcemaps (GET/HEAD, ≤1 rps).
impact: Information disclosure of internal routes/content — Low/Medium.
testability: PASSIVE
[FINAL] DMARCReport API cross-tenant report access (IDOR) @ dmarcreport.com API — confidence 55, AUTH_HELPED
[FINAL] New markdown/agent-skills routes leak non-public artifacts (MISCONFIG) @ www.duocircle.com — confidence 50, PASSIVE
[FINAL] Support-desk ticket/article/attachment access-control gap (IDOR) @ support.dmarcreport.com — confidence 45, PASSIVE
[NEXT] PROBE: GET https://www.duocircle.com/llms.txt followed by GET https://www.duocircle.com/.well-known/agent-skills/markdown-negotiation/SKILL.md — parse both for a manifest of mirrored pages/files, then HEAD each referenced path (≤1 rps) to bound the new public file surface on the current RECON target "www".
[RISK] duocircle.com: 35 — hardened corporate edge (strict CSP, HSTS preload, XFO DENY, Vercel-managed static); residual risk concentrated in the brand-new md/agent-skills routes and wide third-party script allowlist (elfsight/freshchat/zoho/clarity).
[RISK] product-domains (autospf/dmarcreport/phishprotection/outboundsmtp/etc): 60 — multi-tenant mail-security SaaS APIs with token auth, mixed stacks (autospf fronted by Cloudflare), a public support desk, and tenant-isolation class still untested across nine product properties.
[RISK] github.com/duocircle repos: 45 — 13 public repos including stale unarchived PHP (phishredirector, 2021), active MCP servers (dmarcreport-mcp pushed this week; youtrack-mcp hinting at an internal YouTrack deployment), and Terraform/AWS tooling — moderate secret-leak and infrastructure-recon value.
