using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.UserAgentGenerator
{
    /// <summary>
    /// Query options for the User Agent Generator API
    /// </summary>
    public class UserAgentGeneratorQueryOptions
    {
        /// <summary>
        /// The device type: desktop, mobile (phones) or tablet
        /// </summary>
        [JsonProperty("device")]
        public string Device { get; set; }

        /// <summary>
        /// Only user agents of this browser
        /// </summary>
        [JsonProperty("browser")]
        public string Browser { get; set; }

        /// <summary>
        /// Only user agents of this operating system. iPads send the macOS desktop user agent
        /// </summary>
        [JsonProperty("os")]
        public string Os { get; set; }
    }
}
