Postfix MTA
===========

WARNING : NOT WORKING YET!

[![Build Status](https://travis-ci.org/fretscha-ansible/ansible-role-postfix-mta.svg?branch=master)](https://travis-ci.org/fretscha-ansible/ansible-role-postfix-mta)

A postfix (mta) mailserver with mysql/pgsql and dovecot (mda).

Next to come (not priorized nor sorted list) :

* spam and antivirus
* vacation
* mailbox quota per domain & user
* mailing lists
* spam avoiding aliases (aliases limited by counter or time)
* event triggering (BCC, SMS, ... )
* accounting & thotteling
* email monitoring & archiving
* ELK integation (Elasticsearch Logstash Kibana)
* administration webinterface integration (Django Postfix Admin)
* DomainKeys Identified Mail (DKIM)

Please feel free to contribute in any form. There is enough space left in the contributors list ;)


Requirements
------------

This role requires Ansible 1.7.1 or higher.

It has successfully been tested on following Digital Ocean images
* Ubuntu 14.04 (trusty tahr)

Older releases of Ubuntu (12.04 | 12.10 | 13.04 | 13.10) had NOT been tested.

Accelarated mode is disabled by default. Enabling the accelerated mode requires the `python-keyczar`package installed.


Role Variables
--------------

Take a look at the roles/postfix-mta/defaults/main.yml to see in detail how defaults are set.
You shall override all defaults in the host_vars or/and group_vars.

* `postfix_mta_mysql_root_passwd`:
  - Description:
  - Default `bPM3WYmhyC4DDvTz`

* `postfix_mta_mysql_vmail_passwd`:
  - Description:
  - Default `XueznHdk8XpMzA2V`

* `postfix_mta_db`:
  - Description: `mysql` or `pgsql`
  - Default `mysql`

* `postfix_mta_postmaster_address`:
  - Description:
  - Default `postmaster@acme.tld`

* `postfix_mta_mx_name`:
  - Description:
  - Default `mx.acme.tld`

* `postfix_mta_cert_passwd`:
  - Description:
  - Default ``

* `postfix_mta_force_tls`:
  - Description:
  - Default `no`


To create a secure and valid mysql plaintext password, you can run the following line in linux console :
```bash
    python -c "import random, string; print(''.join(random.sample(string.letters+string.digits, 16)))"
```

Dependencies
------------

first-five-minutes

License
-------
The MIT License (MIT)

Copyright (c) 2013-14 Frederic Tschannen

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Todo's
-----
 * test on Debian 7.0 (wheezy) -> bootstrap with python, aptitude, etc.


Author Information
------------------

