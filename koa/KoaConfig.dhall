{-
  This file contains a Type that is to be used by all of my Koa APIs since I
  require these options for a vanilla API to function.
-}

let KoaConfig: Type = {
  -- The display name of the API/web service.
  name: Text,

  -- A relatively short, and optional, description of what the API is for.
  description: Optional Text,

  -- The current version of the API/web service.
  version: Text,

  -- The port to listen on, fairly straight forward.
  port: Natural,

  -- The prefix of the API that is appended to every route/endpoint.
  apiPrefix: Text,

  -- Serves as a simple form of authentication, all requests must contain this
  -- value in the url or headers. If nothing is provided, then the API has no
  -- auth for any of the routes/endpoints.
  requestToken: Optional Text
}

in KoaConfig
