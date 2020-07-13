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
 *
 */

import ApiClient from '../ApiClient';
import OrdStatus from './OrdStatus';

/**
 * The ExecutionReportAllOf model module.
 * @module model/ExecutionReportAllOf
 * @version v1
 */
class ExecutionReportAllOf {
    /**
     * Constructs a new <code>ExecutionReportAllOf</code>.
     * @alias module:model/ExecutionReportAllOf
     */
    constructor() { 
        
        ExecutionReportAllOf.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExecutionReportAllOf</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExecutionReportAllOf} obj Optional instance to populate.
     * @return {module:model/ExecutionReportAllOf} The populated <code>ExecutionReportAllOf</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExecutionReportAllOf();

            if (data.hasOwnProperty('client_order_id_format_exchange')) {
                obj['client_order_id_format_exchange'] = ApiClient.convertToType(data['client_order_id_format_exchange'], 'String');
            }
            if (data.hasOwnProperty('exchange_order_id')) {
                obj['exchange_order_id'] = ApiClient.convertToType(data['exchange_order_id'], 'String');
            }
            if (data.hasOwnProperty('amount_open')) {
                obj['amount_open'] = ApiClient.convertToType(data['amount_open'], 'Number');
            }
            if (data.hasOwnProperty('amount_filled')) {
                obj['amount_filled'] = ApiClient.convertToType(data['amount_filled'], 'Number');
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = OrdStatus.constructFromObject(data['status']);
            }
            if (data.hasOwnProperty('time_order')) {
                obj['time_order'] = ApiClient.convertToType(data['time_order'], [['String']]);
            }
            if (data.hasOwnProperty('error_message')) {
                obj['error_message'] = ApiClient.convertToType(data['error_message'], 'String');
            }
        }
        return obj;
    }


}

/**
 * Hash client id
 * @member {String} client_order_id_format_exchange
 */
ExecutionReportAllOf.prototype['client_order_id_format_exchange'] = undefined;

/**
 * Exchange order id
 * @member {String} exchange_order_id
 */
ExecutionReportAllOf.prototype['exchange_order_id'] = undefined;

/**
 * Amount open
 * @member {Number} amount_open
 */
ExecutionReportAllOf.prototype['amount_open'] = undefined;

/**
 * Amount filled
 * @member {Number} amount_filled
 */
ExecutionReportAllOf.prototype['amount_filled'] = undefined;

/**
 * @member {module:model/OrdStatus} status
 */
ExecutionReportAllOf.prototype['status'] = undefined;

/**
 * History of order status changes
 * @member {Array.<Array.<String>>} time_order
 */
ExecutionReportAllOf.prototype['time_order'] = undefined;

/**
 * Error message
 * @member {String} error_message
 */
ExecutionReportAllOf.prototype['error_message'] = undefined;






export default ExecutionReportAllOf;
