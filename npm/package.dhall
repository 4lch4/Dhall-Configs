{-
  This file contains a Type that defines a standard NPM package and all of its
  available options. It is **not** a 1:1 replica of the official schema as I'm
  still learning the ins and outs of Dhall.
-}
let Map = https://prelude.dhall-lang.org/v15.0.0/Map/Type

let People: Type = {
  name: Optional Text,
  email: Optional Text,
  url: Optional Text
}

let BugsObject: Type = {
  url: Optional Text,
  email: Optional Text
}

let UrlObject: Type = {
  type: Optional Text,
  url: Optional Text
}

let Repository: Type = {
  type: Optional Text,
  url: Optional Text,
  directory: Optional Text
}

let PackageJson: Type = {
  -- Required Properties
  name: Text,
  version: Text,
  description: Text,

  -- Optional Properties
  keywords: Optional (List Text),
  homepage: Optional Text,
  bugs: Optional BugsObject,
  license: Optional Text,
  author: Optional People,
  contributors: Optional (List People),
  funding: Optional UrlObject,
  files: Optional (List Text),
  main: Optional Text,
  bin: Map Text Text,
  repository: Optional Repository,
  scripts: Optional (Map Text Text),
  config: Optional (Map Text Text),
  dependencies: Optional (Map Text Text),
  devDependencies: Optional (Map Text Text),
  peerDependencies: Optional (Map Text Text),
  bundledDependencies: Optional (Map Text Text),
  optionalDependencies: Optional (Map Text Text),
  engines: Optional (Map Text Text),
  os: Optional (List Text),
  private: Optional Bool,
  publishConfig: Optional (Map Text Text)
}

in PackageJson
