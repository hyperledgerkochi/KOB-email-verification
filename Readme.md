# KOB Email Verification Service
##  About Project
 * Proves the ownership of user over his email.
 * Provides verified digital credential for user’s email which is stored in user’s wallet.
 * User submit this digital credential, when he provides his email for availing third party service.
 *  Eg :OTP verification during form filling or transaction.
 * Prerequisites: Git, GitHub, python, Django, HTML5, Docker,Docker-compose.
    * jq and ngrok are available on package manager systems for different platforms such as Chocolatey (Windows) 
      jq- jq is like sed for JSON data - you can use it to slice and filter and map and transform structured data.
      jq can mangle the data format that you have into the one that you want with very little effort.
    * ngrok- ngrok secure introspectable tunnels to localhost webhook development tool and debugging tool.
     
 ## Previous System
 * Current email security solutions depend on various attributes to reduce the chances that a given email (mail) is likely to be a threat.
 * current solutions make it relatively easy to target corporate organizations with a Business Email Compromise (BEC) attack.
 
 ## Proposed System
 *  A blockchain based ledger service marks down an outgoing mail.
 * A public key can be generated for each mail address via, for example, elliptic curve multiplication.
 * The advantages of this approach include:
     1. No separate setup is required (since it is a decentralized service).
     2. Since this is a blockchain based service, it is difficult to hack the data (100% safe regards to privacy).
     3. Decentralized since esa will act as the miners.
 * With the proposed solution, email details (e.g., sender, recipients, timestamp, etc.) are hashed and saved from any organization using email security gateways
 * . Any organization receiving the mail can check it for authenticity via the
blockchain service, thus the mail cannot be spoofed






















