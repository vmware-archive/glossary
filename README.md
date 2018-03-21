# Pivotal Electronic Dictionary of Arcane Nomenclature and Terminology

We have all felt the frustration of not being able to fully participate in a conversation because of the large number of **ACRONYMS** (Alphabetic Characters Representing Obscure Names You Must Shorten) in use by **GURUS** (Groups Uttering Relatively Unintelligible Slang) and long-term company **VETERANS** (Very Experienced Technical Experts Repeating ACRONYMS Nobody Speaks). Until you develop the **EAR** (Experience, Appreciation, and Respect) for a team's specific [**ARGOT**](https://en.wikipedia.org/wiki/Argot) (Abbreviated References to Generally Obvious Things), it's unfortunately easy to be left feeling like an [**IGNORAMUS**](https://www.merriam-webster.com/dictionary/ignoramus) (Individual Given No Opportunity to Respond to A Million Unintelligible Sayings).

This project aims to make Pivotal a more inclusive environment by explicitly
defining the terms, acronyms, initialisms, abbreviations, and jargon used
throughout our company.

## Contributing entries

The site is generated from yaml files located in the `/entries` directory. An entry will look something like this:

```
---
headword: PWS
expansion: Pivotal Web Services
definition: >
  Pivotal's CF-as-a-service offering. This is an instance of 
  cf-deployment maintained by the CloudOps team. This environment
  is useful for getting feedback on the experience of operating 
  Cloud Foundry at scale.
links:
- https://run.pivotal.io
see_also:
- CF-D
- PaaS
```

Other than `headword`, all fields are considered optional.

To create a new empty template, run `./add_word.sh word-to-add`.

## Acknolwedgements

The need for this list became clear when two members of my team, both new Pivots, let me know how overwhelmed they felt by all the acronyms flying at them all the time. I don't think we would have had that conversation if not for the Inclusion workshop organized for us by Gareth Smith.

My humorous acronyming has been inspired by [this delightful piece](https://www.mcsweeneys.net/articles/our-top-secret-army-base-uses-too-many-acronyms) by Dan Caprera in McSweeny's Internet Tendency. Check it out.