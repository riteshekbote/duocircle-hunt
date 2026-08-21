## 2026-08-21 19:18:01 UTC [www] (model mimo)
[CHANGED] phishprotection.com, outboundsmtp.com, mailflowmonitoring.com, tenantmigration.com: all serve markdown content-negotiation surfaces (link headers advertising `/index.md`, `SKILL.md`, `/llms.txt`) — previously only www.duocircle.com was flagged for this
[NEW] api.autospf.com CSP reveals Stripe billing integration (`connect-js.stripe.com`, `js.stripe.com` in frame-src/connect-src) and references `billing.autospf.com` in form-action — billing subdomain not previously inventoried
[NEW] api.dmarcreport.com health endpoint: `GET /` returns `{"status":"up"}` — confirms Rails API is live at root
[CHANGED] api.dmarcreport.com sets `_dmarc_reporter_session` cookie with `SameSite=Lax` (confirmed live) — CSRF posture differs from api.autospf.com's `SameSite=none`
[PRIO] api.dmarcreport.com, 8.6, attack=9 business=9 tech=8 gate=8 cloud=9 fresh=8
[PRIO] api.autospf.com, 8.3, attack=8 business=8 tech=9 gate=7 cloud=8 fresh=8
[PRIO] billing.autospf.com (NEW), 7.5, attack=7 business=8 tech=8 gate=5 cloud=8 fresh=8
[PRIO] dmarcreport.com API (documented endpoints), 7.2, attack=7 business=8 tech=7 gate=4 cloud=7 fresh=8
[PRIO] support.dmarcreport.com, 6.8, attack=6 business=6 tech=6 gate=8 cloud=5 fresh=7
[PRIO] product-marketing-domains (phishprotection/outboundsmtp/mailflowmonitoring/tenantmigration), 5.5, attack=5 business=5 tech=3 gate=9 cloud=3 fresh=7
[PRIO] unsent.dev, 5.2, attack=5 business=5 tech=6 gate=7 cloud=7 fresh=5
[HYP] Cross-tenant DMARC report access via predictable API endpoints
class: IDOR
asset: api.dmarcreport.com
confidence: 75
reasoning: Multi-tenant DMARC SaaS with session-based auth (_dmarc_reporter_session cookie, SameSite=Lax); documented REST API covers per-customer domains, aggregate reports, forensic reports, MTA-STS; MCP client (dmarcreport-mcp) documents full passthrough; report/domain object IDs are classic weak point.
evidence_needed: HTTP 200 response from session A returning tenant B's domain/report object (or proof every lookup re-validates ownership).
verify_steps: PASSIVE: enumerate exact API paths from dmarcreport-mcp source (already read); AUTH_HELPED: register two trial accounts, use token A to request own objects vs. tenant B's domain/report identifiers (GET only, ≤1 rps), diff responses.
impact: Cross-tenant read of customer DMARC/forensic data (sending infrastructure, internal hosts) — HIGH severity.
testability: AUTH_HELPED
[HYP] CSRF on AutoSPF API state-changing endpoints via SameSite=none cookies
class: AUTH
asset: api.autospf.com
confidence: 72
reasoning: Laravel API sets XSRF-TOKEN and session cookies with SameSite=none; Secure; cross-site cookies enable CSRF if no CSRF token validation on state-changing endpoints; CSP reveals Stripe billing integration and billing.autospf.com — payment/billing endpoints may bypass standard CSRF checks.
evidence_needed: State-changing endpoint (POST/PUT/DELETE) that accepts cookie auth without X-XSRF-TOKEN header verification; or billing endpoint (billing.autospf.com) with weak CSRF.
verify_steps: AUTH_HELPED: GET /login to obtain cookies; POST /api/flatten or /api/records with cookie-only auth (no X-XSRF-TOKEN header); check if action succeeds; also probe billing.autospf.com for CSRF on payment endpoints.
impact: Unauthorized SPF record modifications, domain delegation changes, billing tampering — HIGH severity.
testability: AUTH_HELPED
[HYP] Support-desk ticket/article/attachment access-control gap
class: IDOR
asset: support.dmarcreport.com
confidence: 50
reasoning: Freshdesk-hosted support desk serving sequential KB IDs (…/solutions/articles/5000873350); Freshdesk is third-party but ACL defaults may be permissive; adjacent ticket/attachment resources could be exposed if ACL not properly configured.
evidence_needed: One resource (ticket body/attachment) retrievable without an owning session, or vendor banner enabling targeted known-CVE checks.
verify_steps: PASSIVE: fingerprint vendor from HTML/meta; probe public search/list endpoints and HEAD adjacent article IDs for ACL uniformity (≤1 rps).
impact: Exposure of other customers' tickets (domains, mail configs, token snippets) — MEDIUM severity.
testability: PASSIVE
[PARKED] Support-desk ticket/article/attachment access-control gap: confidence 50 < 60 threshold; Freshdesk is third-party vendor (limits direct exploitability of DuoCircle code); verify_steps rely on vendor behavior not DuoCircle configuration.
[FINAL] 1. Cross-tenant DMARC report access via predictable API endpoints (api.dmarcreport.com, IDOR, 75%)
[FINAL] 2. CSRF on AutoSPF API state-changing endpoints via SameSite=none cookies (api.autospf.com, AUTH, 72%)
[NEXT] PROBE: GET https://api.dmarcreport.com/api/v1/domains (no auth, expect 401), then GET https://api.dmarcreport.com/api/v1/reports (no auth, expect 401), then GET https://api.dmarcreport.com/api/v1/users/me (no auth, expect 401) — map API structure and confirm auth enforcement before attempting authenticated tests
[LEARN] ACCEPTED IDOR @ api.dmarcreport.com: Multi-tenant DMARC SaaS with session auth is high-value target for cross-tenant data access
[LEARN] ACCEPTED AUTH @ api.autospf.com: Laravel API with SameSite=none cookies presents CSRF risk on state-changing endpoints
[LEARN] REJECTED AUTH @ account.duocircle.com: WorkOS AuthKit is third-party; auth flaws would be WorkOS responsibility, not DuoCircle direct code
[RISK] duocircle.com: 70/100 — Main corporate site on Vercel with strict CSP/HSTS/XFO, but auth/account subdomains on WorkOS, trust portal with PostHog analytics, and markdown content-negotiation surfaces across all product domains; attack surface moderate with diverse third-party integrations (Freshchat, Elfsight, Zoho, Clarity, SalesPanel, G2)
[RISK] product-domains (autospf/dmarcreport/phishprotection/outboundsmtp/etc): 82/100 — Multiple APIs (Rails, Laravel, Next.js) with session/token auth, cross-site cookies on api.autospf.com, multi-tenant data, Stripe billing integration, documented REST API; high business value; diverse tech stack increases exposure; Freshdesk support desk adds third-party attack surface
[RISK] github.com/duocircle repos: 52/100 — 13 public repos including stale unarchived PHP (phishredirector, 2021), active MCP servers (dmarcreport-mcp, youtrack-mcp hinting at internal YouTrack); no secrets found in repo scan; source surface limited to MCP servers and utilities
