# FHIR SLS and ValueSet Definitions

https://build.fhir.org/ig/SHIFT-Task-Force/slsValueSets/

The ValueSets and Profiles for classifying data into sensitive topics.

From the IG build all of the examples can be downloaded in json, xml, or ttl format. See the [About menu](https://build.fhir.org/ig/SHIFT-Task-Force/slsValueSets/download.html)

The IG can be built locally; if you have the [IG publisher environment](https://confluence.hl7.org/spaces/HAFWG/pages/204283403/Setup+FHIR+IG+Publisher+environment); by using the `_build` batch or script.

The json examples can be pulled from the CI build or a local build; and uploaded to a HAPI server using the `hapi-fhir-cli` `upload-dir` command.

## manual expansion

Given that the IG publisher doesn't like to expand large valueSets, one can look at the SAMHSA valuesets either by going to vsac, or by manually expanding on tx.

SAMHSA big valueset - https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1142.58/expansion/Latest

tx.fhir.org using the URL method:
- `http://tx.fhir.org/r4/ValueSet/?url={url}`

For example the SAMHSA `.36` valueset which has 1436 items in it can be expanded as such:
http://tx.fhir.org/r4/ValueSet/?url=http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.36

## Issues

- The valueSets do have some info warnings that I left in as they are beyond my skills

## more to come

- valuesets source
  - maryland shield law
  - joint commission
  - gravity sdoh VS