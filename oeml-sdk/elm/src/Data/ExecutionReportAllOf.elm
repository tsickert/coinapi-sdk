{-
   OEML - REST API
   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

   The version of the OpenAPI document: v1

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ExecutionReportAllOf exposing (ExecutionReportAllOf, decoder, encode, encodeWithTag, toString)

import Data.OrdStatus as OrdStatus exposing (OrdStatus)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias ExecutionReportAllOf =
    { clientOrderIdFormatExchange : Maybe (String)
    , exchangeOrderId : Maybe (String)
    , amountOpen : Maybe (Float)
    , amountFilled : Maybe (Float)
    , status : Maybe (OrdStatus)
    , timeOrder : Maybe ((List (List String)))
    , errorMessage : Maybe (String)
    }


decoder : Decoder ExecutionReportAllOf
decoder =
    Decode.succeed ExecutionReportAllOf
        |> optional "client_order_id_format_exchange" (Decode.nullable Decode.string) Nothing
        |> optional "exchange_order_id" (Decode.nullable Decode.string) Nothing
        |> optional "amount_open" (Decode.nullable Decode.float) Nothing
        |> optional "amount_filled" (Decode.nullable Decode.float) Nothing
        |> optional "status" (Decode.nullable OrdStatus.decoder) Nothing
        |> optional "time_order" (Decode.nullable (Decode.list (Decode.list Decode.string))) Nothing
        |> optional "error_message" (Decode.nullable Decode.string) Nothing



encode : ExecutionReportAllOf -> Encode.Value
encode =
    Encode.object << encodePairs


encodeWithTag : ( String, String ) -> ExecutionReportAllOf -> Encode.Value
encodeWithTag (tagField, tag) model =
    Encode.object <| encodePairs model ++ [ ( tagField, Encode.string tag ) ]


encodePairs : ExecutionReportAllOf -> List (String, Encode.Value)
encodePairs model =
    [ ( "client_order_id_format_exchange", Maybe.withDefault Encode.null (Maybe.map Encode.string model.clientOrderIdFormatExchange) )
    , ( "exchange_order_id", Maybe.withDefault Encode.null (Maybe.map Encode.string model.exchangeOrderId) )
    , ( "amount_open", Maybe.withDefault Encode.null (Maybe.map Encode.float model.amountOpen) )
    , ( "amount_filled", Maybe.withDefault Encode.null (Maybe.map Encode.float model.amountFilled) )
    , ( "status", Maybe.withDefault Encode.null (Maybe.map OrdStatus.encode model.status) )
    , ( "time_order", Maybe.withDefault Encode.null (Maybe.map (Encode.list (Encode.list Encode.string)) model.timeOrder) )
    , ( "error_message", Maybe.withDefault Encode.null (Maybe.map Encode.string model.errorMessage) )
    ]



toString : ExecutionReportAllOf -> String
toString =
    Encode.encode 0 << encode



