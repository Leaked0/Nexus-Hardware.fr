using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Bunifu.Framework.UI;
using CxFlatUI;
using fastnsh.Properties;

namespace fastnsh
{
	// Token: 0x0200000C RID: 12
	public partial class Form2 : Form
	{
		// Token: 0x06000064 RID: 100 RVA: 0x000051CF File Offset: 0x000033CF
		public Form2()
		{
			this.InitializeComponent();
		}

		// Token: 0x06000065 RID: 101 RVA: 0x000051E8 File Offset: 0x000033E8
		private void bunifuFlatButton1_Click(object sender, EventArgs e)
		{
			Form3 form = new Form3();
			form.Show();
			base.Hide();
		}
	}
}
