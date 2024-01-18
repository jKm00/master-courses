---
author: Joakim
place: A1
date: 18.01.24
---

# Lecture 1

# Why security matters

- Shortage of security skills
- Pay is not too bad!

# Examples

- **Web defacement:** Replace legitimate pages with illegitimate ones.
- **Infiltration (Control hijacking):** Malware.
- **Phishing:** Spoofe site that looks real. Lure through email/SMS.
- **Data theft / Data loss:** Database breach.
- **DoS:** Flood servers with packets.
- **Ransomware:**

## Basic Security Goals

### Confidentiality

Who can read the data

- Keeping something secret
- Encryptions

## #Integrity

Who can alter the data

- No corrupted data

### Availability

- Systems uptime
- System response time

### Privacy

- The right to be left alone
- About individual information (not business related)

### Accountability

- Logging and audit trails
- Handle using timestamp

### Non-Repudiation

- Two parties cannot deny that they have interacted with each other
- Handle using a trusted 3rd party (as a witness)

## Security Guideline

1. Secure the weakest link
2. Practice defense in depth
   1. Don't just rely on one-shot security, have multiple layers
3. Fail securely
   1. Expect failure
   2. E.g. If a firewall fails, disallow any traffic
4. Compartmentalize
   1. Don't put all your eggs in the same basket
5. Be reluctant to trust
   1. Don't trust any code library
   2. Don't trust user (validate inputs)
6. Follow the principle of least privilege
   1. Give minimum access necessary to get the job done
7. Keep it simple
8. Promote privacy
   1. Don't store information just because it's nice to have
9. Remember that hiding secrets is hard
   1. Don't rely on security by obscurity
10. Use your community resources
    1. E.g. OWASP Top 10
