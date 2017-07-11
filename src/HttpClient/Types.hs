{-# LANGUAGE MagicHash, DataKinds, TypeFamilies #-}
module HttpClient.Types where

import Java

data {-# CLASS "org.apache.http.client.HttpClient" #-}
  HttpClient = HttpClient (Object# HttpClient)
  deriving Class

data {-# CLASS "org.apache.http.impl.client.CloseableHttpClient" #-}
  CloseableHttpClient = CloseableHttpClient (Object# CloseableHttpClient)
  deriving Class

data {-# CLASS "org.apache.http.HttpResponse" #-}
  HttpResponse = HttpResponse (Object# HttpResponse)
  deriving Class

data {-# CLASS "org.apache.http.StatusLine" #-}
  StatusLine = StatusLine (Object# StatusLine)
  deriving Class

data {-# CLASS "org.apache.http.HttpEntity" #-}
  HttpEntity = HttpEntity (Object# HttpEntity)
  deriving Class

data {-# CLASS "org.apache.http.client.methods.CloseableHttpResponse" #-}
  CloseableHttpResponse = CloseableHttpResponse (Object# CloseableHttpResponse)
  deriving Class

data {-# CLASS "org.apache.http.impl.cilent.HttpClients" #-}
  HttpClients = HttpClients (Object# HttpClients)
  deriving Class

data {-# CLASS "org.apache.http.client.methods.HttpUriRequest" #-}
  HttpUriRequest = HttpUriRequest (Object# HttpUriRequest)
  deriving Class

data {-# CLASS "org.apache.http.client.methods.HttpGet" #-}
  HttpGet = HttpGet (Object# HttpGet)
  deriving Class

type instance Inherits CloseableHttpClient = '[HttpClient]

type instance Inherits CloseableHttpResponse = '[HttpResponse]

type instance Inherits HttpGet = '[HttpUriRequest]

