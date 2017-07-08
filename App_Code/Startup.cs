using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OurProjectWebsite.Startup))]
namespace OurProjectWebsite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
