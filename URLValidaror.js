/*
 * Custom method to validate urls
 * Validates url with ipv4 addresses with valid port numbers
 * Validates url with http/s, mqtt/s protocols
*/

export const customUrlValidation = (url) => { 
  // Regex to match any ipv4 address or localhost with or without port number & with or without http(s) protocol
  const ipWithPort = new RegExp(/^(https?\:\/\/)?((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(localhost))(\:([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])|())$/)

  // Regex to match a string url with or without http(s) protocol
  const urlRegex = new RegExp(/^((http|https)\:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&\/\/=]*)/)

  // Regex to match mqtt(s) endpoints with or without port number
  const mqttRegex = new RegExp(/^((mqtts?)\:\/\/)?(([-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&\/\/=]*))|(localhost))(\:([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])|())/)
  
  return ipWithPort.test(url) || urlRegex.test(url) || mqttRegex.test(url)
}
