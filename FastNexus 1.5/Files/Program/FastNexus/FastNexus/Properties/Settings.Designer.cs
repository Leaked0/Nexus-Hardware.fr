using System;
using System.CodeDom.Compiler;
using System.Configuration;
using System.Runtime.CompilerServices;

namespace fastnsh.Properties
{
	// Token: 0x02000010 RID: 16
	[CompilerGenerated]
	[GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "11.0.0.0")]
	internal sealed partial class Settings : ApplicationSettingsBase
	{
		// Token: 0x1700003D RID: 61
		// (get) Token: 0x060000A6 RID: 166 RVA: 0x0000B5F8 File Offset: 0x000097F8
		public static Settings Default
		{
			get
			{
				return Settings.defaultInstance;
			}
		}

		// Token: 0x04000092 RID: 146
		private static Settings defaultInstance = (Settings)SettingsBase.Synchronized(new Settings());
	}
}
