# Knowledge Base (seed)
- 2026-08-21 ACCEPTED IDOR @ api.dmarcreport.com: Multi-tenant DMARC SaaS with session auth is high-value target for cross-tenant data access
- 2026-08-21 ACCEPTED AUTH @ api.autospf.com: Laravel API with SameSite=none cookies presents CSRF risk on state-changing endpoints
- 2026-08-21 REJECTED AUTH @ account.duocircle.com: WorkOS AuthKit is third-party; auth flaws would be WorkOS responsibility, not DuoCircle direct code
- 2026-08-21 ACCEPTED IDOR @ api.dmarcreport.com: v2 API with predictable integer IDs, token auth, and documented cross-resource endpoints (/v2/all_domains.json, /v2/postmaster_account_records) — high-confidence IDOR target
- 2026-08-21 ACCEPTED AUTH @ api.autospf.com: Laravel login page confirmed, SameSite=none cookies, Stripe billing integration — CSRF risk confirmed
- 2026-08-21 ACCEPTED AUTH @ billing.autospf.com: Zoho billing portal active (JSESSIONID, 302→SetupOrganization.do) — billing subdomain confirmed live
