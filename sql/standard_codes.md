# Standard Codes

To provide consistent application of data by delivering reference data from approved source(s). examples include address format and post code.

## Identified reference data

_Note: not clear whether geospatial reference is required on large geographical reference data._

- Country
    - Name/Title
    - ONS reference code
    - Source: Office for National Statistics

- County
    - Name/Title
    - Cross reference to Country
    - ONS reference code
    - Source: Office for National Statistics

- Local Authority
    - Name/Title
    - Cross reference to Country
    - Cross reference to County(ies)
    - ONS reference code
    - Source: Office for National Statistics

- Ward
    - Name/Title
    - Cross reference to Local Authority
    - ONS reference code
    - Source: Office for National Statistics

- Measures
    - Converting
    - Yards to Metre
    - Acre to Hectare
    - Sq. Yards to Sq. Metre
    - Sq. Yards to Pole or Rod
    - Sq. Metre to Pole or Rod
    - Feet & inch to Metre
    - and converse

## Potential reference data

- Electoral Register
- Post Office
    - or similar provider of post code and address lookup API
