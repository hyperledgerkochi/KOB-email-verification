#  KOB Email Verification Service
## Abstract
   KOB Email Verification Services proves the ownership of user over his email. It provides verified digital credential for user’s email which is stored in user’s wallet. User      submit this digital credential, when he provides his email for availing third party service, or the user authorize any third party to prove the identity of the user. 
   
 ## Dependent Project
   TBD
 
 ## Motivation
   Current email security solutions depend on various attributes to reduce the chances that a given email (mail) is likely to be a threat.This is a decentralized, peer-to-peer,    proof-of-work, encrypted mail system that uses blockchain technology to conduct email verification. Decentralized Identifier or DIDs refer to a system in which there is no      common storage facility available. There might be many users who cannot setup and maintain DIDs themselves.

## Status Of The Project
   Incubation
   
## Solution
   To overcome this problem a blockchain based ledger service marks down an outgoing mail. Using this approach email details (e.g., sender, recipients, timestamp, etc.) are        hashed and saved from any organization using email security gateways. Any organization receiving the mail can check it for authenticity via the blockchain service, thus the      mail cannot be spam. This application can generate a lot of interest especially since spam mail has continued to circulate online, with some strategies linking the email to      seemingly credible sources.
   
   Steps to perform Email Verification:
   1. User reuqests for a digital credential after submitting Email.
   
   ![1](https://user-images.githubusercontent.com/61916798/112602865-3ac26d80-8e3a-11eb-9255-8c8327b0aafc.jpg)

   2. User recieves digital credential in his/her wallet.
   
   ![st2](https://user-images.githubusercontent.com/61916798/112595891-0e562380-8e31-11eb-995e-552ba7597946.PNG)
   
   3. User submit his/her email id for availing third party services.
   
   ![st3](https://user-images.githubusercontent.com/61916798/112594903-9dfad280-8e2f-11eb-92da-9ad0c2398900.PNG)
   
   4. The third party asks for digital credential to verify the ownership of email.
   
   ![st4](https://user-images.githubusercontent.com/61916798/112596403-c5eb3580-8e31-11eb-98f2-48911e088721.PNG)
   
   5. User presents the digital credential and avail third party services.
   
   ![kob5](https://user-images.githubusercontent.com/61916798/112599250-b372fb00-8e35-11eb-9bb4-517a8c5e4739.png)
   
   The verifier verifies the digital credential and allow the user to avail services.
## Contributor
   [Sweta Kumari](https://github.com/sweta-dotcom/KOB-email-verification)
 
## Running a local instance

### Pre-requisites

- [Docker](https://www.docker.com/products/docker-desktop)

- [s2i](https://github.com/openshift/source-to-image/releases)

- [jq](https://stedolan.github.io/jq)

- [ngrok](https://ngrok.com)

`jq` and `ngrok` are available on package manager systems for different platforms such as [Homebrew](https://brew.sh/) (Mac), [Chocolatey](https://chocolatey.org/) (Windows) and various Linux distribution package managers.

### Install the service

Open the terminal and run the below command

    $ curl -L https://raw.githubusercontent.com/hyperledgerkochi/KOB-email-verification/dist/dist/get.kob_email_verification_service.io | bash

### Running

Open two shell/terminal sessions:

1. From within the [scripts](./scripts) folder execute `./start-ngrok.sh`. This will create a tunnel for the agent.

2. From within the [docker](./docker) folder:
    - run `./manage build` to assemble the runtime images for the services
    - when the build completes, run `./manage up`

_Refer to `manage -h` for additional usage information._

Once services are started, visit [http://localhost:8080](http://localhost:8080) to see the app running and visit [http://localhost:8050](http://localhost:8050) to see any outbound mail the app is sending (it won't actually send any email message in the development environment)

### Stopping

To stop the service:

1.  Open a new terminal

2.  From within the [docker](./docker) folder:
    -  run `./manage down`


## Refrences
 *  https://github.com/bcgov/indy-email-verification
 *  https://vonx.io/how_to/confbook























