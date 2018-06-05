Development notes and ideas

# Allotment information and management system

Allotments are areas of arable land split into small units (plots) and rented to tenants by the land owner.

The tenant agrees T&C with land owner and rents a plot for up to one year, with option to renew on both parties.

A record is required to record and match plots with tenants, then record compliance, or not, with T&C.

## Software Requirements
See also User Stories and Use Cases.

- Record site owner
- Record site location
- Record plots
- Record tenants
- Record rent payments
- Record correspondence
- Upload photo and/or film associated with a site or plot
- Various reports
- Public view of site locations and vacancies
- Public application for tenancy
- Security for handling personal information
- Data protection and management
- Audit trail

## Potential software
Delivery via public domain webserver
- platform: *nix
- database: MySql, Postgre (agnostic if possible)
- webserver: agnostic
- code: PHP7+
- PHP framework: YII 2+
