module Main where

import Java
import HttpClient

main :: IO ()
main = java $ do
  httpClient <- createDefaultHttpClient
  req <- newHttpGet "http://httpbin.org/get"
  res <- httpClient <.> execute req
  code <- res <.> getStatusLine >- getStatusCode
  if code >= 200 && code < 300 then do
    entity <- res <.> getEntity
    io $ putStrLn (showEntity entity)
  else do
    io $ putStrLn ("oops! " ++ (show code))
  res <.> closeResponse
  httpClient <.> closeClient

