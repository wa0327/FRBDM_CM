using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace FRBDM_CM.Web.Portal.Controllers
{
    [RoutePrefix("api")]
    public class DefaultController : ApiController
    {
        [Route("hello-world"), HttpGet]
        public object HelloWorld()
        {
            return "Hello, world!";
        }
    }
}
