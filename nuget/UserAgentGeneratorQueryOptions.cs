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
        /// The device type for the user agent string (e.g., desktop, mobile, tablet)
        /// Example: desktop
        /// </summary>
        [JsonProperty("device")]
        public string Device { get; set; }
    }
}
