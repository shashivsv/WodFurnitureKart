using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JWTAuthenticate.Startup))]
namespace JWTAuthenticate
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
