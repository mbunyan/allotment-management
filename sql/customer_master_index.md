# Customer Master Index (CMI)

The Customer will have one or more services connecting them to Local Government. This implies a Customer Relationship Model (CRM) where Local Government provides many, often discrete, services. Examples include Electoral Register, Local Rates and Social Services. In order to provide some degree of data/information consistency and overview of individual relationships each Customer will (should) have one Master Customer ID.

The _Customer Master Index_ is not used by a service (e.g. Allotments) as a reference or database foreign key. The data management system for the service will provide its own unique identifier and provide this unique key plus its service identifier to the CRM system. The CRM provides a _Cross Reference ID_ for the service to record against the customers Master Customer Index.

The Customer may not exist in the Customer Master Index, in which case a new relationship will be created by the CRM. This may apply where the customer is not resident in the local authority area, or is recently arrived.

The service data management system should provide for recording the external reference for _Cross Reference ID_, even if one does not exist or not currently in use.

A well designed CRM should provide an API to enable the service to discover existence, or not, of a Customer using keywords. For example last name and post code.

An example CRM and service relationship model is described in [Data Model for Customer Master Index](http://www.databaseanswers.org/data_models/customer_master_index/index.htm).