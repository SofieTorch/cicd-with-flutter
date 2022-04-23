---
label: Welcome
icon: home
---

> This page has been generated automatically!

# CI/CD for your Flutter Project with GitHub Actions

This project is a demo for my talk given at Flisol SCESI 2022.  
Here you'll find an implementation of Continous Integration / Continous Deployment using GitHub Actions!

## Scope

The following things are covered by this CI/CD implementation:
- [x] Code style and formatting check.  
- [x] Source code analysis.  
- [x] Test execution and verification.  
- [x] Minimum coverage check.  
- [x] Generation of .md documentation to a webpage.  
- [x] Generation of doc comments to a API documentation webpage.  


## Actions
The GitHub Actions used for this project are:
- [Flutter workflow](https://github.com/VeryGoodOpenSource/very_good_workflows/blob/main/.github/workflows/flutter_package.yml) from [Very good workflows](https://github.com/VeryGoodOpenSource/very_good_workflows), developed by [Very Good Ventures](https://verygood.ventures/).
- [Retype github pages action](https://github.com/retypeapp/action-github-pages), with some additional configurations.
  
> See actions in detail inside `.github/workflows`.

## Documentation generators
For the generation of a static webpage from `.md` files, this project makes use of [Retype](https://retype.com).  
For the generation of a static API documentation webpage from doc comments inside source code, this project uses [Dartdoc](https://pub.dev/packages/dartdoc).