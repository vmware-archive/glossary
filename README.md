# Pivotal Elastic Dictionary of Arcane Nomenclature and Terminology

This project aims to make Pivotal a more inclusive environment by explicitly
defining the terms, acronyms, initialisms, abbreviations, and jargon used
throughout our company.

Entries are read from the `entries` directory. An entry will look something like this:

```yml
---
headword: PWS
expansion: Pivotal Web Services
definition: >
  Pivotal's CF-as-a-service offering. This is an instance of cf-deployment maintained by the CloudOps team. This environment is useful for getting feedback on the experience of operating Cloud Foundry at scale.
links:
- https://run.pivotal.io
see_also:
- CF-D
- PaaS
```

Other than `headword`, all fields are considered optional.

To create a new empty template, run `./add_word.sh word-to-add`.
