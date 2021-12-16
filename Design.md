# Design

## Metadata-Based Configuration
Phoenix attempts to bring the convenience of annotation-based configuration found in Javas Spring Boot framework to Haskell. This should allow to easily mark functions as REST/HTML handlers, which are then added to the servant API behind the scenes. Other uses are defining BDD steps or Unit Testing functions.

However, so far it is unclear how and what the best mechanism is as ideally we want to retain type safety. Currently we see the following options:

- Template Haskell 
- Type-Level programming such as Type Families
- Using ANN annotations of GHC: https://ghc.gitlab.haskell.org/ghc/doc/users_guide/extending_ghc.html

### REST/HTML Handlers
- Use TH to parse rest/html endpoints into servant types like spring, but directly in types e.g. handleDepositAccount :: SqlBackend -> [getREST|/account/deposit?iban:text&amount:double|]
