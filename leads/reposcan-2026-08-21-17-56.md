
===== REPOSCAN 2026-08-21 17:56:55 UTC =====
## Grep hits:
SCAN SUMMARY: 104 code/config files scanned, 17 hits
reposcan-raw/duocircle/youtrack-mcp/scripts/test-field-values.js:17: baseURL: 'https://test.youtrack.cloud',
reposcan-raw/duocircle/youtrack-mcp/scripts/test-field-values.js:18: token: 'test-token'
reposcan-raw/duocircle/youtrack-mcp/scripts/test-error-handling.js:15: baseURL: 'https://test.youtrack.cloud',
reposcan-raw/duocircle/youtrack-mcp/scripts/test-error-handling.js:16: token: 'test-token'
reposcan-raw/duocircle/dmarcreport-mcp/package.json:2: "name": "@duocircle/dmarcreport-mcp",
reposcan-raw/duocircle/dmarcreport-mcp/package.json:8: "dmarcreport-mcp": "dist/index.js"
reposcan-raw/duocircle/dmarcreport-mcp/package.json:22: "dmarcreport",
reposcan-raw/duocircle/dmarcreport-mcp/docker-compose.yml:2: dmarcreport-mcp:
reposcan-raw/duocircle/dmarcreport-mcp/docker-compose.yml:4: image: duocircle/dmarcreport-mcp:latest
reposcan-raw/duocircle/dmarcreport-mcp/docker-compose.yml:7: - DMARCREPORT_API_URL=${DMARCREPORT_API_URL:-https://api.dmarcreport.com}
reposcan-raw/duocircle/dmarcreport-mcp/src/index.ts:10: *   DMARCREPORT_API_KEY=your-key npx @duocircle/dmarcreport-mcp
reposcan-raw/duocircle/dmarcreport-mcp/src/index.ts:14: *   DMARCREPORT_API_URL - Optional. API base URL (default: https://api.dmarcreport.com)
reposcan-raw/duocircle/dmarcreport-mcp/src/index.ts:33: const API_URL = process.env.DMARCREPORT_API_URL || 'https://api.dmarcreport.com';
reposcan-raw/duocircle/dmarcreport-mcp/src/tools/help.ts:355: sections.push('- [API Token Setup Guide](https://support.dmarcreport.com/support/solutions/articles/5000873350-api-tokens) - Learn how to generate and manage API tokens');
reposcan-raw/duocircle/dmarcreport-mcp/src/guidance/patterns.ts:398: pattern: /include:_s\d+\.autospf\.email/i,
reposcan-raw/duocircle/dmarcreport-mcp/src/guidance/patterns.ts:400: dashboard_url: "https://autospf.com/dashboard",
reposcan-raw/duocircle/dmarcreport-mcp/src/guidance/patterns.ts:404: pattern: /include:.*\.autospf\.com/i,

## Model analysis:
[0m
> build · nemotron-3-ultra-free
[0m
[0m$ [0msha256sum <<< 'test-token' | cut -d' ' -f1
eeeec30f1f0ea0b0beb5265ca8c3f2ab702cd73b51825c3e36882365b751f4fb
[0m
### TEST_OR_EXAMPLE
| File | Line | Classification | SHA256 (if secret-like) |
|------|------|----------------|-------------------------|
| youtrack-mcp/scripts/test-field-values.js | 17 | TEST_OR_EXAMPLE | — |
| youtrack-mcp/scripts/test-field-values.js | 18 | TEST_OR_EXAMPLE | eeeec30f1f0ea0b0beb5265ca8c3f2ab702cd73b51825c3e36882365b751f4fb |
| youtrack-mcp/scripts/test-error-handling.js | 15 | TEST_OR_EXAMPLE | — |
| youtrack-mcp/scripts/test-error-handling.js | 16 | TEST_OR_EXAMPLE | eeeec30f1f0ea0b0beb5265ca8c3f2ab702cd73b51825c3e36882365b751f4fb |
| dmarcreport-mcp/package.json | 2,8,22 | TEST_OR_EXAMPLE | — |
| dmarcreport-mcp/docker-compose.yml | 2,4 | TEST_OR_EXAMPLE | — |
| dmarcreport-mcp/src/index.ts | 10,14 | TEST_OR_EXAMPLE | — |
| dmarcreport-mcp/src/tools/help.ts | 355 | TEST_OR_EXAMPLE | — |

### ENDPOINT_LEAK
| File | Line | Endpoint | Notes |
|------|------|----------|-------|
| dmarcreport-mcp/docker-compose.yml | 7 | https://api.dmarcreport.com | Default API URL in compose env |
| dmarcreport-mcp/src/index.ts | 33 | https://api.dmarcreport.com | Hardcoded fallback in source |

### INTERESTING
| File | Line | Detail |
|------|------|--------|
| dmarcreport-mcp/src/guidance/patterns.ts | 398,400,404 | References to `autospf.email` / `autospf.com` (in-scope sibling domains) |

### REAL_SECRET
*None found*

---

### VERDICT
| Candidate | REPORT_CANDIDATE |
|-----------|------------------|
| Test tokens in youtrack-mcp test scripts | no |
| Production API endpoints in dmarcreport-mcp config/source | no (in-scope domain, documented default) |
| Autospf domain references in patterns | no (in-scope sibling product) |

**Summary:** No reportable findings. All hits are test fixtures, documented defaults for in-scope production APIs, or references to in-scope sibling domains.
