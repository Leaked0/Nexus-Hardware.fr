using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Bunifu.Framework.UI;
using CxFlatUI;
using fastnsh.Properties;
using Microsoft.Win32;

namespace fastnsh
{
	// Token: 0x0200000B RID: 11
	public partial class Form1 : Form
	{
		// Token: 0x0600005D RID: 93 RVA: 0x000043F1 File Offset: 0x000025F1
		public Form1()
		{
			this.InitializeComponent();
		}

		// Token: 0x0600005E RID: 94 RVA: 0x0000440C File Offset: 0x0000260C
		private void Form1_Load(object sender, EventArgs e)
		{
			base.Hide();
			DialogResult dialogResult = MessageBox.Show("Êtes-vous un booster ? (discord.gg/opti)" + Environment.NewLine + "Rejoignez-nous!", "FastNexus - Online", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
			bool flag = dialogResult == DialogResult.Yes;
			if (flag)
			{
				base.Show();
				this.bunifuFlatButton2.Visible = false;
			}
			else
			{
				bool flag2 = dialogResult == DialogResult.No;
				if (flag2)
				{
					base.Show();
					this.bunifuFlatButton1.Visible = false;
					this.username.Visible = false;
					this.password.Visible = false;
					this.pictureBox2.Visible = false;
					this.pictureBox3.Visible = false;
					this.bunifuFlatButton2.Visible = true;
				}
			}
			this.password.KeyPress += this.CheckEnter;
			this.password.PasswordChar = '●';
		}

		// Token: 0x0600005F RID: 95 RVA: 0x000044EC File Offset: 0x000026EC
		private void CheckEnter(object sender, KeyPressEventArgs e)
		{
			bool flag = e.KeyChar == '\r';
			if (flag)
			{
				bool flag2 = API.Login(this.username.Text, this.password.Text);
				if (flag2)
				{
					RegistryKey registryKey = Registry.CurrentUser.CreateSubKey("Software\\FastNexus");
					registryKey.SetValue("Premium", "1");
					registryKey.Close();
					MessageBox.Show("Vous venez de vous connecter avec succès !", "FastNexus - Online", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
					Form2 form = new Form2();
					form.Show();
					base.Hide();
				}
			}
		}

		// Token: 0x06000060 RID: 96 RVA: 0x0000457C File Offset: 0x0000277C
		private void bunifuFlatButton1_Click(object sender, EventArgs e)
		{
			bool flag = API.Login(this.username.Text, this.password.Text);
			if (flag)
			{
				RegistryKey registryKey = Registry.CurrentUser.CreateSubKey("Software\\FastNexus");
				registryKey.SetValue("Premium", "1");
				registryKey.Close();
				MessageBox.Show("Vous venez de vous connecter avec succès !", "FastNexus - Online", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
				Form2 form = new Form2();
				form.Show();
				base.Hide();
			}
		}

		// Token: 0x06000061 RID: 97 RVA: 0x000045FC File Offset: 0x000027FC
		private void bunifuFlatButton2_Click(object sender, EventArgs e)
		{
			MessageBox.Show("Vous venez de vous connecter avec succès !", "FastNexus - Online", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			Form2 form = new Form2();
			form.Show();
			base.Hide();
		}
	}
}
