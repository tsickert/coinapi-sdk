/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIValidationError.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIValidationError::OAIValidationError(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIValidationError::OAIValidationError() {
    this->initializeModel();
}

OAIValidationError::~OAIValidationError() {}

void OAIValidationError::initializeModel() {

    m_type_isSet = false;
    m_type_isValid = false;

    m_title_isSet = false;
    m_title_isValid = false;

    m_status_isSet = false;
    m_status_isValid = false;

    m_trace_id_isSet = false;
    m_trace_id_isValid = false;

    m_errors_isSet = false;
    m_errors_isValid = false;
}

void OAIValidationError::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIValidationError::fromJsonObject(QJsonObject json) {

    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_title_isValid = ::OpenAPI::fromJsonValue(title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_status_isValid = ::OpenAPI::fromJsonValue(status, json[QString("status")]);
    m_status_isSet = !json[QString("status")].isNull() && m_status_isValid;

    m_trace_id_isValid = ::OpenAPI::fromJsonValue(trace_id, json[QString("traceId")]);
    m_trace_id_isSet = !json[QString("traceId")].isNull() && m_trace_id_isValid;

    m_errors_isValid = ::OpenAPI::fromJsonValue(errors, json[QString("errors")]);
    m_errors_isSet = !json[QString("errors")].isNull() && m_errors_isValid;
}

QString OAIValidationError::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIValidationError::asJsonObject() const {
    QJsonObject obj;
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(title));
    }
    if (m_status_isSet) {
        obj.insert(QString("status"), ::OpenAPI::toJsonValue(status));
    }
    if (m_trace_id_isSet) {
        obj.insert(QString("traceId"), ::OpenAPI::toJsonValue(trace_id));
    }
    if (m_errors_isSet) {
        obj.insert(QString("errors"), ::OpenAPI::toJsonValue(errors));
    }
    return obj;
}

QString OAIValidationError::getType() const {
    return type;
}
void OAIValidationError::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}

bool OAIValidationError::is_type_Set() const{
    return m_type_isSet;
}

bool OAIValidationError::is_type_Valid() const{
    return m_type_isValid;
}

QString OAIValidationError::getTitle() const {
    return title;
}
void OAIValidationError::setTitle(const QString &title) {
    this->title = title;
    this->m_title_isSet = true;
}

bool OAIValidationError::is_title_Set() const{
    return m_title_isSet;
}

bool OAIValidationError::is_title_Valid() const{
    return m_title_isValid;
}

double OAIValidationError::getStatus() const {
    return status;
}
void OAIValidationError::setStatus(const double &status) {
    this->status = status;
    this->m_status_isSet = true;
}

bool OAIValidationError::is_status_Set() const{
    return m_status_isSet;
}

bool OAIValidationError::is_status_Valid() const{
    return m_status_isValid;
}

QString OAIValidationError::getTraceId() const {
    return trace_id;
}
void OAIValidationError::setTraceId(const QString &trace_id) {
    this->trace_id = trace_id;
    this->m_trace_id_isSet = true;
}

bool OAIValidationError::is_trace_id_Set() const{
    return m_trace_id_isSet;
}

bool OAIValidationError::is_trace_id_Valid() const{
    return m_trace_id_isValid;
}

QString OAIValidationError::getErrors() const {
    return errors;
}
void OAIValidationError::setErrors(const QString &errors) {
    this->errors = errors;
    this->m_errors_isSet = true;
}

bool OAIValidationError::is_errors_Set() const{
    return m_errors_isSet;
}

bool OAIValidationError::is_errors_Valid() const{
    return m_errors_isValid;
}

bool OAIValidationError::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_status_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_trace_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_errors_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIValidationError::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI