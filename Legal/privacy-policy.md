# Privacy Policy

_Last updated: August 15, 2025_

**Data Controller:** Glint Technologies (India) Private Limited.

## What we collect
- Account details: Name, email, phone, handle, DOB (optional).
- Usage data: posts, comments, likes, timestamps, device metadata.
- Messages: stored only as **end-to-end encrypted ciphertext** — we cannot read message plaintext.
- Device keys & pre-keys (Signal) stored as opaque blobs to enable secure messaging.

## Lawful basis & consent
We process data with:
- User consent (registration, upload).
- Contractual necessity to deliver services.
- Legal obligations (comply with lawful orders).

## Use of data
- Provide and improve the service.
- Content distribution (feed, notifications).
- Security & fraud prevention.
- Anonymous analytics.

## Sharing and third parties
- We do not share plaintext private messages with third parties.
- We may disclose metadata or content to law enforcement under lawful process.
- Third-party processors (hosting, email, SMS) process data under DPAs.

## Retention
- Data kept while account active. For account deletion we *soft-delete* and preserve backups and limited metadata for up to 180 days to respond to legal process and takedowns.

## International transfers
- Data may be processed or stored outside your country. For EU data transfers we will rely on SCCs and safeguards; contact DPO for details.

## Your rights
Where applicable (EU, UK, India DPDP once in force, California, Brazil) you may:
- Access, rectify, delete your personal data.
- Withdraw consent.
- Object to processing and request restriction.
- Request portability.

Use `/api/compliance/dsr` or email DPO for requests.

## Security
- E2E encryption (Signal Protocol) for messages.
- AES-GCM for client-side encrypted media (recommended).
- Argon2 password hashing, short-lived JWTs, MFA supported.

## Children
- Minimum age defaults: 13 globally; for India we treat under-18 as child for extra safeguards (private by default, parental consent flows where required).

## Grievance & Contact
- Grievance Officer: `${process.env.GRIEVANCE_OFFICER_NAME || 'Grievance Officer' }` — ${process.env.GRIEVANCE_OFFICER_EMAIL || 'grievance@glint.app'}
- DPO: ${process.env.DPO_EMAIL || 'dpo@glint.app'}

For full details see the Terms & Takedown procedures.
