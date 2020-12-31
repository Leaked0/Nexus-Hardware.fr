using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using Bunifu.Framework.UI;
using CxFlatUI;
using fastnsh.Properties;
using Microsoft.Win32;

namespace fastnsh
{
	// Token: 0x0200000D RID: 13
	public partial class Form3 : Form
	{
		// Token: 0x06000068 RID: 104 RVA: 0x00005DA0 File Offset: 0x00003FA0
		public Form3()
		{
			this.InitializeComponent();
			base.Hide();
			bool flag = Registry.GetValue("HKEY_CURRENT_USER\\Software\\FastNexus", "Premium", null) == null;
			if (flag)
			{
				this.tabPage6.Hide();
				this.cxFlatTabControl1.TabPages.Remove(this.tabPage6);
			}
			else
			{
				this.tabPage6.Show();
				this.cxFlatTabControl1.TabPages.Insert(0, this.tabPage6);
			}
			MessageBox.Show("Veuillez créer un point de restauration avant toutes manipulations, nous ne sommes pas responsables des dégâts qui seront commis !", "FastNexus - Online", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			base.Show();
			Directory.CreateDirectory("C:\\FastNSH\\Scripts");
		}

		// Token: 0x06000069 RID: 105 RVA: 0x00005E54 File Offset: 0x00004054
		private void bunifuFlatButton1_Click(object sender, EventArgs e)
		{
			bool flag = this.cxFlatCheckBox3.Checked && this.cxFlatCheckBox4.Checked;
			if (flag)
			{
				MessageBox.Show("Vous ne pouvez pas mettre les deux prioriétés !", "FastNexus - Online", MessageBoxButtons.OK, MessageBoxIcon.Hand);
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
			}
			bool @checked = this.cxFlatCheckBox2.Checked;
			if (@checked)
			{
				byte[] optimizeFtn = Resources.OptimizeFtn;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\OptimizeFtn.exe", optimizeFtn);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\OptimizeFtn.exe"
					}
				}.Start();
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
			}
			bool flag2 = this.cxFlatCheckBox2.Checked && this.cxFlatCheckBox3.Checked;
			if (flag2)
			{
				byte[] optimizeFtn2 = Resources.OptimizeFtn;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\OptimizeFtn.exe", optimizeFtn2);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\OptimizeFtn.exe"
					}
				}.Start();
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
				byte[] normal = Resources.Normal;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Normal.exe", normal);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Normal.exe"
					}
				}.Start();
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
			}
			bool flag3 = this.cxFlatCheckBox2.Checked && this.cxFlatCheckBox4.Checked;
			if (flag3)
			{
				byte[] optimizeFtn3 = Resources.OptimizeFtn;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\OptimizeFtn.exe", optimizeFtn3);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\OptimizeFtn.exe"
					}
				}.Start();
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
				byte[] high = Resources.High;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\High.exe", high);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\High.exe"
					}
				}.Start();
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
			}
			bool flag4 = this.cxFlatCheckBox3.Checked && !this.cxFlatCheckBox4.Checked;
			if (flag4)
			{
				byte[] normal2 = Resources.Normal;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Normal.exe", normal2);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Normal.exe"
					}
				}.Start();
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
			}
			bool flag5 = this.cxFlatCheckBox4.Checked && !this.cxFlatCheckBox3.Checked;
			if (flag5)
			{
				byte[] high2 = Resources.High;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\High.exe", high2);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\High.exe"
					}
				}.Start();
				this.cxFlatCheckBox2.Checked = false;
				this.cxFlatCheckBox3.Checked = false;
				this.cxFlatCheckBox4.Checked = false;
			}
		}

		// Token: 0x0600006A RID: 106 RVA: 0x000061E8 File Offset: 0x000043E8
		private void bunifuFlatButton4_Click(object sender, EventArgs e)
		{
			bool flag = this.cxFlatComboBox1.SelectedText == "4 GB";
			if (flag)
			{
				byte[] _4GB = Resources._4GB;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\4GB.exe", _4GB);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\4GB.exe"
					}
				}.Start();
			}
			bool flag2 = this.cxFlatComboBox1.SelectedText == "8 GB";
			if (flag2)
			{
				byte[] _8GB = Resources._8GB;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\8GB.exe", _8GB);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\8GB.exe"
					}
				}.Start();
			}
			bool flag3 = this.cxFlatComboBox1.SelectedText == "12 GB";
			if (flag3)
			{
				byte[] _12GB = Resources._12GB;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\12GB.exe", _12GB);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\12GB.exe"
					}
				}.Start();
			}
			bool flag4 = this.cxFlatComboBox1.SelectedText == "16 GB";
			if (flag4)
			{
				byte[] _16GB = Resources._16GB;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\16GB.exe", _16GB);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\16GB.exe"
					}
				}.Start();
			}
			bool flag5 = this.cxFlatComboBox1.SelectedText == "32 GB";
			if (flag5)
			{
				byte[] _32GB = Resources._32GB;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\32GB.exe", _32GB);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\32GB.exe"
					}
				}.Start();
			}
		}

		// Token: 0x0600006B RID: 107 RVA: 0x00006388 File Offset: 0x00004588
		private void bunifuFlatButton5_Click(object sender, EventArgs e)
		{
			byte[] connexion = Resources.Connexion;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\Connexion.exe", connexion);
			new Process
			{
				StartInfo = 
				{
					FileName = "C:\\FastNSH\\Scripts\\Connexion.exe"
				}
			}.Start();
		}

		// Token: 0x0600006C RID: 108 RVA: 0x000063C6 File Offset: 0x000045C6
		private void pictureBox14_Click(object sender, EventArgs e)
		{
			Process.Start("https://twitter.com/NexusHardware");
		}

		// Token: 0x0600006D RID: 109 RVA: 0x000063D4 File Offset: 0x000045D4
		private void pictureBox13_Click(object sender, EventArgs e)
		{
			Process.Start("https://discord.gg/opti");
		}

		// Token: 0x0600006E RID: 110 RVA: 0x000063E2 File Offset: 0x000045E2
		private void Form3_Load(object sender, EventArgs e)
		{
		}

		// Token: 0x0600006F RID: 111 RVA: 0x000063E8 File Offset: 0x000045E8
		private void bunifuFlatButton6_Click(object sender, EventArgs e)
		{
			byte[] msi = Resources.MSI;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\MSIModeTool.exe", msi);
			Process.Start(new ProcessStartInfo("C:\\FastNSH\\Scripts\\MSIModeTool.exe")
			{
				UseShellExecute = true,
				Verb = "runas"
			});
		}

		// Token: 0x06000070 RID: 112 RVA: 0x00006430 File Offset: 0x00004630
		private void bunifuFlatButton8_Click(object sender, EventArgs e)
		{
			Directory.CreateDirectory("C:\\FastNSH\\Scripts\\Nv");
			byte[] nvInspector = Resources.NvInspector;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\Nv\\NvInspector.exe", nvInspector);
			new Process
			{
				StartInfo = 
				{
					FileName = "C:\\FastNSH\\Scripts\\Nv\\NvInspector.exe"
				}
			}.Start();
			byte[] nvProfile = Resources.NvProfile;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\Nv\\NvProfile.nip", nvProfile);
		}

		// Token: 0x06000071 RID: 113 RVA: 0x0000648C File Offset: 0x0000468C
		private void bunifuFlatButton7_Click(object sender, EventArgs e)
		{
			byte[] cleanmgr = Resources.cleanmgr;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\cleanmgr.exe", cleanmgr);
			Process process = new Process();
			process.Start();
		}

		// Token: 0x06000072 RID: 114 RVA: 0x000064BC File Offset: 0x000046BC
		private void bunifuFlatButton9_Click(object sender, EventArgs e)
		{
			Directory.CreateDirectory("C:\\FastNSH\\Scripts\\Power");
			byte[] power = Resources.Power;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\Power\\Power.exe", power);
			new Process
			{
				StartInfo = 
				{
					FileName = "C:\\FastNSH\\Scripts\\Power\\Power.exe"
				}
			}.Start();
			byte[] nexusUltimate = Resources.NexusUltimate;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\Power\\NexusUltimate.pow", nexusUltimate);
		}

		// Token: 0x06000073 RID: 115 RVA: 0x00006518 File Offset: 0x00004718
		private void cxFlatSwitch1_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch1.Checked;
			if (@checked)
			{
				byte[] temp = Resources.Temp;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Temp.exe", temp);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Temp.exe"
					}
				}.Start();
				this.cxFlatSwitch1.Checked = false;
			}
		}

		// Token: 0x06000074 RID: 116 RVA: 0x00006574 File Offset: 0x00004774
		private void cxFlatSwitch2_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch2.Checked;
			if (@checked)
			{
				byte[] prefetch = Resources.Prefetch;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Prefetch.exe", prefetch);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Prefetch.exe"
					}
				}.Start();
				this.cxFlatSwitch2.Checked = false;
			}
		}

		// Token: 0x06000075 RID: 117 RVA: 0x000065D0 File Offset: 0x000047D0
		private void cxFlatSwitch3_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch3.Checked;
			if (@checked)
			{
				byte[] recycleBin = Resources.RecycleBin;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\RecycleBin.exe", recycleBin);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\RecycleBin.exe"
					}
				}.Start();
				this.cxFlatSwitch3.Checked = false;
			}
		}

		// Token: 0x06000076 RID: 118 RVA: 0x0000662C File Offset: 0x0000482C
		private void cxFlatSwitch4_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch4.Checked;
			if (@checked)
			{
				byte[] other = Resources.Other;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Other.exe", other);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Other.exe"
					}
				}.Start();
				this.cxFlatSwitch4.Checked = false;
			}
		}

		// Token: 0x06000077 RID: 119 RVA: 0x00006688 File Offset: 0x00004888
		private void cxFlatSwitch5_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch5.Checked;
			if (@checked)
			{
				byte[] debloat = Resources.Debloat;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Debloat.exe", debloat);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Debloat.exe"
					}
				}.Start();
				this.cxFlatSwitch5.Checked = false;
			}
		}

		// Token: 0x06000078 RID: 120 RVA: 0x000066E4 File Offset: 0x000048E4
		private void cxFlatSwitch6_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch6.Checked;
			if (@checked)
			{
				byte[] defender = Resources.Defender;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Defender.exe", defender);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Defender.exe"
					}
				}.Start();
				this.cxFlatSwitch6.Checked = false;
			}
		}

		// Token: 0x06000079 RID: 121 RVA: 0x00006740 File Offset: 0x00004940
		private void cxFlatSwitch7_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch7.Checked;
			if (@checked)
			{
				byte[] cortana = Resources.Cortana;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Cortana.exe", cortana);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Cortana.exe"
					}
				}.Start();
				this.cxFlatSwitch7.Checked = false;
			}
		}

		// Token: 0x0600007A RID: 122 RVA: 0x0000679C File Offset: 0x0000499C
		private void cxFlatSwitch8_CheckedChanged(object sender, EventArgs e)
		{
			bool @checked = this.cxFlatSwitch8.Checked;
			if (@checked)
			{
				byte[] services = Resources.Services;
				File.WriteAllBytes("C:\\FastNSH\\Scripts\\Services.exe", services);
				new Process
				{
					StartInfo = 
					{
						FileName = "C:\\FastNSH\\Scripts\\Services.exe"
					}
				}.Start();
				this.cxFlatSwitch8.Checked = false;
			}
		}

		// Token: 0x0600007B RID: 123 RVA: 0x000063E2 File Offset: 0x000045E2
		private void tabPage1_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x0600007C RID: 124 RVA: 0x000067F8 File Offset: 0x000049F8
		private void bunifuFlatButton2_Click(object sender, EventArgs e)
		{
			byte[] cleanmgr = Resources.cleanmgr;
			File.WriteAllBytes("C:\\FastNSH\\Scripts\\cleanmgr.exe", cleanmgr);
			new Process
			{
				StartInfo = 
				{
					FileName = "C:\\FastNSH\\Scripts\\cleanmgr.exe"
				}
			}.Start();
		}
	}
}
