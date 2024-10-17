using MySql.Data.MySqlClient;
using System.Web.UI;
using System;

namespace Proyecto_AHNA
{
    public partial class RegistroUsuario : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No se requiere lógica al cargar la página
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Obtener los valores ingresados por el usuario
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();
            string rol = "Empleado";

            // Validar los campos
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "El nombre de usuario y la contraseña son obligatorios.";
                return;
            }

            if (password != confirmPassword)
            {
                lblMessage.Text = "Las contraseñas no coinciden.";
                return;
            }

            // Aquí debemoss agregar la lógica para guardar el usuario en la base de datos
            string connectionString = "server=localhost;database=Ahna;user id=root;password=Disney19.91"; // Ajusta esto a tu cadena de conexión
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                string query = "INSERT INTO Usuarios (USERNAME, PASSWORD, ROL) VALUES (@Username, @Password, @Rol)";

                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password); // Recordor encriptar la contraseña antes de guardarla
                    command.Parameters.AddWithValue("@Rol", rol);
                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Registro exitoso.";

                        // Limpiar los campos después del registro
                        txtUsername.Text = string.Empty;
                        txtPassword.Text = string.Empty;
                        txtConfirmPassword.Text = string.Empty;
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Error al registrar: " + ex.Message;
                    }
                }
            }
        }
    }
}

