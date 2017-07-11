{-# LANGUAGE FlexibleContexts #-}
module HttpClient.Methods where

import Java
import HttpClient.Types

foreign import java unsafe "@static org.apache.http.impl.client.HttpClients.createDefault"
  createDefaultHttpClient :: Java a CloseableHttpClient

foreign import java unsafe "@interface execute"
  execute :: (Extends a HttpUriRequest, Extends b HttpClient, Extends c HttpResponse) => a -> Java b c

foreign import java unsafe "@new"
  newHttpGet :: String -> Java a HttpGet

foreign import java unsafe "@interface getEntity"
  -- XXX: The type variable ‘b’ is ambiguous
  --getEntity :: (Extends a HttpResponse, Extends b HttpEntity) => Java a b
  getEntity :: (Extends a HttpResponse) => Java a HttpEntity

foreign import java unsafe "@static org.apache.http.util.EntityUtils.toString"
  showEntity :: (Extends a HttpEntity) => a -> String

foreign import java unsafe "@interface getStatusLine"
  -- XXX: The type variable ‘b’ is ambiguous
  --getStatusLine :: (Extends a HttpResponse, Extends b StatusLine) => Java a b
  getStatusLine :: (Extends a HttpResponse) => Java a StatusLine

foreign import java unsafe "@interface getStatusCode"
  getStatusCode :: (Extends a StatusLine) => Java a Int

foreign import java unsafe "@interface close"
  closeResponse :: Java CloseableHttpResponse ()

foreign import java unsafe "close"
  closeClient :: Java CloseableHttpClient ()

