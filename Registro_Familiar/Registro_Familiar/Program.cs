using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Registro_Familiar
{
    static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
<<<<<<< HEAD
=======
<<<<<<< Updated upstream
            GUI.SplashScrean sp = new GUI.SplashScrean();
            if (sp.ShowDialog() == DialogResult.OK)
            {
                Application.Run(new GUI.Login());
            }
          
=======
>>>>>>> dbfdcba5c383dbc31a8386a3632886863aeb6800

            GUI.Splash sp = new GUI.Splash();
            if (sp.ShowDialog()== DialogResult.OK)
            {
                Application.Run(new GUI.Login());
            }
     
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
>>>>>>> dbfdcba5c383dbc31a8386a3632886863aeb6800
        }
    }
}





