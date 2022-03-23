using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Registro_Familiar.GUI
{
    public partial class SplashScrean : Form
    {
        public SplashScrean()
        {
            InitializeComponent();
            Tiempo.Enabled = true;
            Tiempo.Interval = 3000; //Duración Milisegundos
      
        }

        private void Tiempo_Tick(object sender, EventArgs e)
        {
            Tiempo.Stop();
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
    }
}
