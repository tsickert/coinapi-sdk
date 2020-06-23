/**
 * OMS - REST API .
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.OrderData;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class Order {
  
  @SerializedName("type")
  private String type = null;
  @SerializedName("exchange_name")
  private String exchangeName = null;
  @SerializedName("data")
  private List<OrderData> data = null;

  /**
   * null
   **/
  @ApiModelProperty(value = "null")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   * Exchange name
   **/
  @ApiModelProperty(value = "Exchange name")
  public String getExchangeName() {
    return exchangeName;
  }
  public void setExchangeName(String exchangeName) {
    this.exchangeName = exchangeName;
  }

  /**
   * Orders array
   **/
  @ApiModelProperty(value = "Orders array")
  public List<OrderData> getData() {
    return data;
  }
  public void setData(List<OrderData> data) {
    this.data = data;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Order order = (Order) o;
    return (this.type == null ? order.type == null : this.type.equals(order.type)) &&
        (this.exchangeName == null ? order.exchangeName == null : this.exchangeName.equals(order.exchangeName)) &&
        (this.data == null ? order.data == null : this.data.equals(order.data));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.exchangeName == null ? 0: this.exchangeName.hashCode());
    result = 31 * result + (this.data == null ? 0: this.data.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Order {\n");
    
    sb.append("  type: ").append(type).append("\n");
    sb.append("  exchangeName: ").append(exchangeName).append("\n");
    sb.append("  data: ").append(data).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}