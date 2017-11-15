# Create invoice for rental of asset

## Who, primary actor
- Site Manager

## Summary requirement
### Annual rent
An annual exercise to create invoices for all or selected assets and send to tenants. Letter must show asset(s) for tenant, rental charge, discount, total invoice, date due, methods of payment.

### Ad-hoc
A single event to create invoices for all or selected assets and send to tenant. Likely mid-year.

Potentially requires reduced rent as proportion of yearly rent.

## Pre-conditions
- Invoice template exists
- Rateable value of asset will have been set for period (rent year)
- Asset will have been assigned to tenant

## Main flow
### Annual
- Site selected
- Bulk production of invoices
- Preview of invoices to be created _may be_ required
- List of invoices produced _will be_ required
- Letters are emailed if email exists
- Letters are printed and posted (manual effort)
### Ad-hoc
- Tenant selected
- Asset(s) selected
- Preview of invoice
- Letters are emailed if email exists
- Letters are printed and posted (manual effort)

## Post condition
- Tenant record shows outstanding invoice

## Required information
- Annual or ad-hoc
- Date rental starts from
- Asset record
- Rateable values and rental period
- Tenant record

## End usage
- Outstanding invoices can be viewed

## End product
- Format Unicode PDF/A-2u (preferred), or PDF/A-2a or PDF/A-1a (least)
- Archive compliant
- Accessibility compliant
- A4 printable
- Retain copy or re-producible and auditable data or file type