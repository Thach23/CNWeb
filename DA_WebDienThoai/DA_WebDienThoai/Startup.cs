using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DA_WebDienThoai.Startup))]
namespace DA_WebDienThoai
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
