# Record payments received for rental of an asset

## Who, primary actor
- Site Owner
- Site Manager

## Summary requirement
Enable site owner or site manager to record payment of invoice, usually rent of shed, store or greenhouse, against tenant.

Records against 'asset' what rent has been paid (money).

Partial payment is allowed.

Record payment in full.

Flag to show partial payment

## Pre-conditions
- Asset for rent is recorded in dataset
- Rent value of asset for current year is recorded in dataset
- Asset to be rented is available for rent
- Tenant details are on record
- Partial condition that invoice has been issued

## Main flow
Two variations

Tenant route:
- Find tenant and show list of invoices to be settled
- Identify invoice to be settled
- Record what payment has been received
- Record date received
- Flag if payment in full or partial
- Opportunity to make notes against invoice and/or item
- Invoice can be cancelled, when asset no longer required by tenant

Item route
- Shed, greenhouse or other asset for rent
- Find item
- Identify outstanding invoice
- Record what payment has been received
- Record date received
- Flag if payment in full or partial
- Opportunity to make notes against invoice and/or item
- Invoice can be cancelled, when asset no longer required by tenant

## Post condition
- Indicate full payment received and date
- Indicate partial payment received and date
- Indicate asset has been rented
- Indicate asset is available for rent when no longer required

## Required information
- Tenant name, plot number, postal address
- Item description (unique asset number or description)

## End usage
- Show outstanding invoices
- Show paid invoices
- Show partial payments

## End product
- Reports by year
- Reports for previous 7 full years
- History of payments received, date, amount, asset, tenant
- Report invoices outstanding full amount
- Report invoices outstanding partial payments