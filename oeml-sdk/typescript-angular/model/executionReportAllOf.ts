/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { OrdStatus } from './ordStatus';


export interface ExecutionReportAllOf { 
    /**
     * Hash client id
     */
    client_order_id_format_exchange?: string;
    /**
     * Exchange order id
     */
    exchange_order_id?: string;
    /**
     * Amount open
     */
    amount_open?: number;
    /**
     * Amount filled
     */
    amount_filled?: number;
    status?: OrdStatus;
    /**
     * History of order status changes
     */
    time_order?: Array<Array<string>>;
    /**
     * Error message
     */
    error_message?: string;
}
