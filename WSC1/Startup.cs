using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WSC1.Startup))]
namespace WSC1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
