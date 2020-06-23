{-
   OMS - REST API .

   OMS Project

   OpenAPI Version: 3.0.0
   OMS - REST API . API version: v1
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OMS-RESTAPI..API.Balances
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OMS-RESTAPI..API.Balances where

import OMS-RESTAPI..Core
import OMS-RESTAPI..MimeTypes
import OMS-RESTAPI..Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Balances

-- *** v1BalancesGet

-- | @GET \/v1\/balances@
-- 
-- Get balances
-- 
-- Returns all of your balances, including available balance.
-- 
v1BalancesGet 
  :: Request V1BalancesGet MimeNoContent [Balance] MimeJSON
v1BalancesGet =
  _mkRequest "GET" ["/v1/balances"]

data V1BalancesGet  

-- | /Optional Param/ "exchange_id" - Exchange name
instance HasOptionalParam V1BalancesGet ExchangeId where
  applyOptionalParam req (ExchangeId xs) =
    req `setQuery` toQuery ("exchange_id", Just xs)
-- | @application/json@
instance Produces V1BalancesGet MimeJSON
