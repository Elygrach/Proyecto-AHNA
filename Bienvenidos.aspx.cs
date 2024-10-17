using System;
using System.Web.UI;

namespace Proyecto_AHNA
{
    public partial class Bienvenidos : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Aquí puedes agregar cualquier lógica que necesites al cargar la página
            if (!IsPostBack)
            {
                // Este código se ejecuta solo la primera vez que se carga la página
                // Puedes agregar lógica aquí si es necesario
            }
        }

        // Si necesitas manejar eventos en esta página, puedes agregar métodos aquí
    }
}
