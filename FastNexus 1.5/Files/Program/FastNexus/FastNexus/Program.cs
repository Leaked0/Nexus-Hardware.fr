using System;
using System.Windows.Forms;

namespace fastnsh
{
	// Token: 0x0200000E RID: 14
	internal static class Program
	{
		// Token: 0x0600007F RID: 127 RVA: 0x0000AEF1 File Offset: 0x000090F1
		[STAThread]
		private static void Main()
		{
			OnProgramStart.Initialize("FastNSH", "513633", "CYQTgAYapT7WKRS3qAS2Sqhg4gPAzxKz4LH", "1.0");
			Application.EnableVisualStyles();
			Application.SetCompatibleTextRenderingDefault(false);
			Application.Run(new Form1());
		}
	}
}
