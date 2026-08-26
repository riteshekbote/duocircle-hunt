
## 2026-08-21 18:20:51 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 18:46:01 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 19:18:11 UTC
- CHANGED phishprotection.com, outboundsmtp.com, mailflowmonitoring.com, tenantmigration.com: all serve markdown content-negotiation surfaces (link headers advertising `/index.md`, `SKILL.md`, `/llms.txt`) — pr
- NEW api.autospf.com CSP reveals Stripe billing integration (`connect-js.stripe.com`, `js.stripe.com` in frame-src/connect-src) and references `billing.autospf.com` in form-action — billing subdomain not p
- NEW api.dmarcreport.com health endpoint: `GET /` returns `{"status":"up"}` — confirms Rails API is live at root
- CHANGED api.dmarcreport.com sets `_dmarc_reporter_session` cookie with `SameSite=Lax` (confirmed live) — CSRF posture differs from api.autospf.com's `SameSite=none`
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 19:45:35 UTC
- NEW docs.dmarcreport.com — full API v2 documentation live; reveals token auth (Authorization: Token token=<token>), predictable integer IDs (accounts/:id, domains/:id, agg_reports/:id), and endpoints incl
- CHANGED api.dmarcreport.com — v1 endpoints (/api/v1/*) return 404; actual API is /v2/* with token auth (not session); GET /v2/accounts returns 401 (auth enforced)
- NEW app.dmarcreport.com/signup — live signup page with SOC-2 badge, free plan (1 domain, 10K reports)
- NEW billing.autospf.com — empty response body (status unknown), referenced in api.autospf.com CSP form-action
- CHANGED api.autospf.com — confirmed Laravel login page (Welcome back, Sign in with Google/Microsoft/SSO)
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 20:03:54 UTC
- NEW docs.dmarcreport.com — full API v2 documentation live; reveals token auth (`Authorization: Token token=<token>`), predictable integer IDs (accounts/:id, domains/:id, agg_reports/:id), and endpoints in
- CHANGED api.dmarcreport.com — v1 endpoints (`/api/v1/*`) return 404; actual API is `/v2/*` with token auth (not session); GET `/v2/all_domains.json` returns 401 (auth enforced)
- NEW app.dmarcreport.com/signup — live signup page with SOC-2 badge, free plan (1 domain, 10K reports)
- NEW billing.autospf.com — Zoho billing portal (JSESSIONID, 302→`/SetupOrganization.do`), not empty; HSTS with includeSubDomains
- CHANGED api.autospf.com — confirmed Laravel login page (Welcome back, Sign in with Google/Microsoft/SSO)
- CHANGED api.dmarcreport.com — `/v2/accounts` example shows sequential IDs (1462, 1473, 1487, 1488); `/v2/all_domains.json` example shows domain IDs (2503, 2593, 2596); API supports both numeric ID and slug in
- NEW docs.dmarcreport.com — full API v2 documentation live; reveals token auth (`Authorization: Token token=<token>`), predictable integer IDs (accounts/:id, domains/:id, agg_reports/:id), and endpoints in
- CHANGED api.dmarcreport.com — v1 endpoints (`/api/v1/*`) return 404; actual API is `/v2/*` with token auth (not session); GET `/v2/all_domains.json` returns 401 (auth enforced)
- NEW app.dmarcreport.com/signup — live signup page with SOC-2 badge, free plan (1 domain, 10K reports)
- NEW billing.autospf.com — Zoho billing portal (JSESSIONID, 302→`/SetupOrganization.do`); HSTS with includeSubDomains; NOT empty as previously assumed
- CHANGED api.autospf.com — confirmed Laravel login page (Welcome back, Sign in with Google/Microsoft/SSO)
- CHANGED api.dmarcreport.com — `/v2/accounts` example shows sequential IDs (1462, 1473, 1487, 1488); `/v2/all_domains.json` example shows domain IDs (2503, 2593, 2596); API supports both numeric ID and slug in
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 20:38:41 UTC
- NEW autospf.com/dashboard — new live surface discovered in dmarcreport-mcp guidance patterns (patterns.ts:400); not previously inventoried
- NEW _s\d+\.autospf.email — outbound SMTP sending subdomain pattern confirmed in dmarcreport-mcp; adds mail-flow attack surface
- CHANGED trust.duocircle.com — confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 21:00:28 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 21:37:06 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 21:59:10 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 22:36:23 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 22:58:59 UTC
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 23:33:40 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-21 23:57:44 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 01:52:27 UTC
- CHANGED app.dmarcreport.com/signup: Cloudflare Turnstile captcha (sitekey `0x4AAAAAAAixJKhNMIDS4Stt`) gates automated account creation — blocks scripted IDOR testing
- NEW dmarcreport.com CSP references `*.widgets.dmarcinput.com` and `*.widgets.dev.dmarcinput.com` as form-action/frame-src — both have no DNS A records (dead); dmarcinput.com itself on AWS DNS but returns 
- CHANGED app.dmarcreport.com/login: WorkOS AuthKit sets `authkit_redirect_attempts=1` tracking cookie on redirect to `/users/sign_in`
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 02:42:17 UTC
- NEW app.dmarcreport.com/signup: Cloudflare Turnstile captcha (sitekey `0x4AAAAAAAixJKhNMIDS4Stt`) gates automated account creation — blocks scripted IDOR testing
- NEW dmarcreport.com CSP references `*.widgets.dmarcinput.com` and `*.widgets.dev.dmarcinput.com` as form-action/frame-src — both have no DNS A records (dead); dmarcinput.com itself on AWS DNS but returns 
- CHANGED app.dmarcreport.com/login: WorkOS AuthKit sets `authkit_redirect_attempts=1` tracking cookie on redirect to `/users/sign_in`
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 03:28:07 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 04:10:36 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 04:51:50 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 05:20:55 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 05:51:39 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 06:31:48 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 07:17:15 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 07:50:38 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 08:20:06 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 08:54:29 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 09:29:40 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 09:54:40 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 10:27:09 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 10:52:41 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 11:18:51 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 11:41:30 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 12:00:30 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 12:57:01 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 13:38:25 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 13:59:05 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 14:31:35 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 14:54:50 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 15:25:16 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 15:49:08 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 16:10:50 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 16:43:05 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 17:03:06 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 17:33:17 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 17:55:36 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 18:38:12 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 19:04:31 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 19:32:39 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 19:52:56 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 20:20:37 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 20:46:42 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 21:08:21 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 21:35:36 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 21:56:26 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 22:30:15 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 22:54:15 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 23:23:18 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-22 23:45:51 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 00:02:03 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 01:57:12 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 03:11:41 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 04:04:08 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 04:49:54 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 05:21:03 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 05:53:29 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 06:40:07 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 07:21:06 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 07:55:44 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 08:38:02 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 09:04:00 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 09:40:12 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 10:01:48 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 10:36:32 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 10:58:45 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 11:29:45 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 11:52:40 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 12:35:56 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 13:19:58 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 13:51:21 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 14:17:35 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 14:45:07 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 15:06:42 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 15:35:50 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 15:57:11 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 16:35:38 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 16:59:49 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 17:30:07 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 17:52:24 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 18:23:54 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 18:57:41 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 19:28:55 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 19:50:13 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 20:12:44 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 20:42:48 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 21:02:34 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 21:33:07 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 21:54:47 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 22:25:42 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 22:50:44 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 23:13:54 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 23:40:05 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-23 23:58:41 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 01:52:30 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 03:00:56 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 04:02:02 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 04:57:44 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 05:47:15 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 06:28:36 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 07:41:55 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 08:30:15 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 09:27:51 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 10:19:38 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 11:00:21 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 11:38:54 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 12:02:23 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 13:10:18 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 14:04:35 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 14:57:36 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 15:49:35 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 16:23:42 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 17:05:48 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 17:45:21 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 18:17:49 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 19:07:21 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 19:44:45 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 20:13:01 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 20:52:11 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 21:25:19 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 21:55:13 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 22:31:28 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 22:57:51 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 23:29:52 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-24 23:53:09 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 01:12:56 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 02:33:05 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 03:29:22 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 04:19:17 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 05:01:38 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 05:42:30 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 06:18:51 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 07:15:48 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 08:03:47 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 08:56:45 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 09:44:33 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 10:16:27 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 10:55:33 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 11:34:11 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 12:00:33 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 13:06:51 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 14:03:26 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 15:00:24 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 15:55:10 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 16:42:18 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 17:17:33 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 17:50:59 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 18:29:58 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 19:11:56 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 19:48:26 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 20:13:12 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 20:49:59 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 21:18:27 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 21:49:35 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 22:15:39 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 22:50:06 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 23:17:26 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-25 23:44:29 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-26 00:25:15 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-26 02:09:56 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added

## 2026-08-26 03:20:01 UTC
- NEW api.autospf.com - Laravel API with cross-site cookies (SameSite=none)
- NEW api.dmarcreport.com - Rails API with session auth, CSP reveals widget subdomains
- NEW account.duocircle.com / account.duocircle-sandbox.com - WorkOS AuthKit auth endpoints
- NEW billing.dmarcreport.com - Zoho billing (JSESSIONID)
- NEW unsent.dev - Developer Email API (Next.js/Vercel)
- NEW status.duocircle.com - Zoho status page
- NEW github.com/duocircle - 13 repos (dmarcreport-mcp, youtrack-mcp, urlshortener, phishredirector, etc.)
- NEW www.duocircle.com: markdown content-negotiation surface live (`/index.md`, `/llms.txt`, `/.well-known/agent-skills/markdown-negotiation/SKILL.md` advertised in link headers)
- NEW support.dmarcreport.com: public support desk discovered via dmarcreport-mcp README (KB article 5000873350 - API tokens)
- NEW dmarcreport.com: documented token-authed REST API ("full API coverage": domains, aggregate reports, forensic reports, MTA-STS) consumed by dmarcreport-mcp
- NEW youtrack-mcp repo (TypeScript, pushed 2026-01) implies an internal YouTrack instance exists behind DuoCircle ops
- NEW app.duocircle.com: NXDOMAIN — no app panel at that name; assumed surface reduced
- CHANGED github.com/duocircle/dmarcreport-mcp actively developed (pushed 2026-08-19)
- CHANGED trust.duocircle.com confirmed Vercel-hosted (CNAME 10a739ef30de8834.vercel-dns-016.com, HTTP 200) with PostHog added to CSP — takeover surface closed, analytics surface added
