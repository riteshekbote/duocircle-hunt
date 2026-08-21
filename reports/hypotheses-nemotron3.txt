## 2026-08-21 18:20:40 UTC [www] (model nemotron3)
[PRIO] api.dmarcreport.com, 8.6, attack=9 business=9 tech=8 gate=8 cloud=9 fresh=8
[PRIO] api.autospf.com, 8.1, attack=8 business=8 tech=9 gate=7 cloud=8 fresh=8
[PRIO] account.duocircle.com, 7.8, attack=8 business=9 tech=7 gate=6 cloud=8 fresh=8
[PRIO] unsent.dev, 7.3, attack=8 business=7 tech=8 gate=7 cloud=9 fresh=7
[PRIO] github.com/duocircle/dmarcreport-mcp, 7.1, attack=7 business=8 tech=7 gate=9 cloud=6 fresh=7
[PRIO] billing.dmarcreport.com, 6.8, attack=7 business=8 tech=6 gate=5 cloud=8 fresh=7
[PRIO] dmarcreport.com (frontend), 6.5, attack=7 business=8 tech=6 gate=8 cloud=7 fresh=6
[PRIO] autospf.com (frontend), 6.5, attack=7 business=8 tech=6 gate=8 cloud=7 fresh=6
[PRIO] phishprotection.com, 6.2, attack=6 business=7 tech=6 gate=8 cloud=7 fresh=6
[PRIO] outboundsmtp.com, 6.2, attack=6 business=7 tech=6 gate=8 cloud=7 fresh=6
[PRIO] api.dmarcreport.com, 8.6, attack=9 business=9 tech=8 gate=8 cloud=9 fresh=8
[PRIO] api.autospf.com, 8.1, attack=8 business=8 tech=9 gate=7 cloud=8 fresh=8
[PRIO] account.duocircle.com, 7.8, attack=8 business=9 tech=7 gate=6 cloud=8 fresh=8
[PRIO] unsent.dev, 7.3, attack=8 business=7 tech=8 gate=7 cloud=9 fresh=7
[PRIO] github.com/duocircle/dmarcreport-mcp, 7.1, attack=7 business=8 tech=7 gate=9 cloud=6 fresh=7
[PRIO] billing.dmarcreport.com, 6.8, attack=7 business=8 tech=6 gate=5 cloud=8 fresh=7
[PRIO] dmarcreport.com (frontend), 6.5, attack=7 business=8 tech=6 gate=8 cloud=7 fresh=6
[PRIO] autospf.com (frontend), 6.5, attack=7 business=8 tech=6 gate=8 cloud=7 fresh=6
[PRIO] phishprotection.com, 6.2, attack=6 business=7 tech=6 gate=8 cloud=7 fresh=6
[PRIO] outboundsmtp.com, 6.2, attack=6 business=7 tech=6 gate=8 cloud=7 fresh=6
[NEW] api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
[NEW] api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
[NEW] account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
[NEW] billing.dmarcreport.com - Zoho billing (JSESSIONID)
[NEW] unsent.dev - Developer Email API (Next.js/Vercel)
[NEW] status.duocircle.com - Zoho status page
[NEW] github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
[HYP] Cross-tenant DMARC report access via predictable API endpoints
class: IDOR
asset: api.dmarcreport.com
confidence: 75
reasoning: API uses session-based auth (_dmarc_reporter_session cookie); CSP allows framing from dmarcreport.com; multi-tenant SaaS with report lookup by domain/selector
evidence_needed: Valid session cookie + ability to access reports for domains not owned by account
verify_steps: GET /api/v1/reports?domain=victim.com with authenticated session; test cross-domain report access; check for authorization checks on /api/v1/domains/:id endpoints
impact: Full DMARC aggregate/forensic reports for arbitrary domains - email infrastructure visibility, spoofing analytics, HIGH severity
testability: AUTH_HELPED
[HYP] Cross-site request forgery on AutoSPF API via SameSite=none cookies
class: AUTH
asset: api.autospf.com
confidence: 70
reasoning: Laravel API sets XSRF-TOKEN and session cookies with SameSite=none; Secure; cross-site cookies enable CSRF if no CSRF token validation on state-changing endpoints
evidence_needed: State-changing endpoint (POST/PUT/DELETE) that accepts cookie auth without CSRF token verification
verify_steps: GET /login to obtain cookies; POST /api/flatten or /api/records with cookie-only auth (no X-XSRF-TOKEN header); check if action succeeds
impact: Unauthorized SPF record modifications, domain delegation changes, flattening config tampering - HIGH severity
testability: AUTH_HELPED
[HYP] WorkOS AuthKit configuration allows account enumeration or auth bypass
class: AUTH
asset: account.duocircle.com
confidence: 65
reasoning: Auth redirect to WorkOS with client_id exposed in URL; sandbox subdomain exists with different client_id; potential for auth flow manipulation or user enumeration via error messages
evidence_needed: Distinct error responses for valid vs invalid emails in sign-in flow; ability to complete auth flow without valid credentials
verify_steps: GET /callback?code=invalid&state=test; POST to WorkOS authorize endpoint with various email formats; compare error messages/timing
impact: Account takeover via auth bypass, user enumeration for phishing - MEDIUM-HIGH severity
testability: PASSIVE (initial), AUTH_HELPED (full)
[PARKED] WorkOS AuthKit configuration allows account enumeration or auth bypass: confidence 65 < 70 threshold; third-party auth (WorkOS) limits direct exploitability; verify_steps partly rely on WorkOS behavior not DuoCircle code
[FINAL] 1. Cross-tenant DMARC report access via predictable API endpoints (api.dmarcreport.com, IDOR, 75%)
[FINAL] 2. Cross-site request forgery on AutoSPF API via SameSite=none cookies (api.autospf.com, AUTH, 70%)
[NEXT] PROBE: GET https://api.dmarcreport.com/api/v1/domains with no auth (expect 401), then with valid session cookie to map API structure and identify report lookup endpoints
[LEARN] ACCEPTED IDOR @ api.dmarcreport.com: Multi-tenant DMARC SaaS with session auth is high-value target for cross-tenant data access
[LEARN] ACCEPTED AUTH @ api.autospf.com: Laravel API with SameSite=none cookies presents CSRF risk on state-changing endpoints
[LEARN] REJECTED AUTH @ account.duocircle.com: WorkOS AuthKit is third-party; auth flaws would be WorkOS responsibility, not DuoCircle direct code
[RISK] duocircle.com: 72/100 - Main marketing site on Vercel (low), but auth/account subdomains on WorkOS, trust portal, status on Zoho; attack surface moderate
[RISK] product-domains (autospf/dmarcreport/phishprotection/outboundsmtp/etc): 85/100 - Multiple APIs (Rails, Laravel, Next.js) with session/token auth, cross-site cookies, multi-tenant data; high business value; diverse tech stack increases exposure
[RISK] github.com/duocircle repos: 55/100 - 13 public repos but mostly docs/config; dmarcreport-mcp exposes API defaults; no secrets found; source surface limited to MCP servers and utilities
