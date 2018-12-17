// Auto-generated. Do not edit!

// (in-package jrc_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class smooth_multiRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_multi = null;
      this.y_multi = null;
      this.theta_multi = null;
    }
    else {
      if (initObj.hasOwnProperty('x_multi')) {
        this.x_multi = initObj.x_multi
      }
      else {
        this.x_multi = [];
      }
      if (initObj.hasOwnProperty('y_multi')) {
        this.y_multi = initObj.y_multi
      }
      else {
        this.y_multi = [];
      }
      if (initObj.hasOwnProperty('theta_multi')) {
        this.theta_multi = initObj.theta_multi
      }
      else {
        this.theta_multi = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type smooth_multiRequest
    // Serialize message field [x_multi]
    bufferOffset = _arraySerializer.float64(obj.x_multi, buffer, bufferOffset, null);
    // Serialize message field [y_multi]
    bufferOffset = _arraySerializer.float64(obj.y_multi, buffer, bufferOffset, null);
    // Serialize message field [theta_multi]
    bufferOffset = _arraySerializer.float64(obj.theta_multi, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type smooth_multiRequest
    let len;
    let data = new smooth_multiRequest(null);
    // Deserialize message field [x_multi]
    data.x_multi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y_multi]
    data.y_multi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [theta_multi]
    data.theta_multi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.x_multi.length;
    length += 8 * object.y_multi.length;
    length += 8 * object.theta_multi.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jrc_srvs/smooth_multiRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a44a93c68be40826e47223eda039e9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] x_multi
    float64[] y_multi
    float64[] theta_multi
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new smooth_multiRequest(null);
    if (msg.x_multi !== undefined) {
      resolved.x_multi = msg.x_multi;
    }
    else {
      resolved.x_multi = []
    }

    if (msg.y_multi !== undefined) {
      resolved.y_multi = msg.y_multi;
    }
    else {
      resolved.y_multi = []
    }

    if (msg.theta_multi !== undefined) {
      resolved.theta_multi = msg.theta_multi;
    }
    else {
      resolved.theta_multi = []
    }

    return resolved;
    }
};

class smooth_multiResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mark_multi = null;
    }
    else {
      if (initObj.hasOwnProperty('mark_multi')) {
        this.mark_multi = initObj.mark_multi
      }
      else {
        this.mark_multi = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type smooth_multiResponse
    // Serialize message field [mark_multi]
    bufferOffset = _arraySerializer.float64(obj.mark_multi, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type smooth_multiResponse
    let len;
    let data = new smooth_multiResponse(null);
    // Deserialize message field [mark_multi]
    data.mark_multi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.mark_multi.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jrc_srvs/smooth_multiResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68760c887143af51a7ea43710a80f059';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] mark_multi
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new smooth_multiResponse(null);
    if (msg.mark_multi !== undefined) {
      resolved.mark_multi = msg.mark_multi;
    }
    else {
      resolved.mark_multi = []
    }

    return resolved;
    }
};

module.exports = {
  Request: smooth_multiRequest,
  Response: smooth_multiResponse,
  md5sum() { return '3b1e979c6d58d1f5eaa86cabfb1c7458'; },
  datatype() { return 'jrc_srvs/smooth_multi'; }
};
