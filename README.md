# duocircle-hunt

Automated bug-bounty pipeline for the DuoCircle responsible-disclosure program
(email-only: security@duocircle.com).

## Scope
duocircle.com + any subdomain, autospf.com, dmarcreport.com, phishprotection.com,
outboundsmtp.com, tenantmigration.com, mailflowmonitoring.com,
alumniforwarding.com, nureply.com, inboxissue.com, plus public repos under
github.com/duocircle.

## Workflows
| Workflow | Cadence | Role |
|---|---|---|
| hunt.yml | every 5 min | 5-model analyst rotation, 8-step methodology |
| reposcan.yml | every 15 min | deep scan of github.com/duocircle + npm squat checks |
| triage.yml | :23/:53 hourly | second-model validation with evidence gate |
| sync-issues.yml | after hunt | leads -> GitHub issues |

## Anti-hallucination gates (triage)
1. **Lead gate** - no leads collected = model never runs.
2. **Evidence gate** - a lead survives only if its URL returned a live HTTP
   status in the passive probe (TIMEOUT/ERR = dropped before the validator).
3. **Strict verdict filter** - VALID lines must quote verbatim an exact probed
   URL; no fall-through to unfiltered matches; empty strict list = zero VALIDs.
4. **Learnings gate** - REJECTED learnings enter the knowledge base only when
   they cite a probed URL.

## Rules
Passive-first (GET/HEAD only), <=1 rps, no DoS, no volume mail tests, scanner
output alone is rejected. See scope.yml.
