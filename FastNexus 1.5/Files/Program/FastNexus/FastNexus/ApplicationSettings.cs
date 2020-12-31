using System;

namespace fastnsh
{
	// Token: 0x02000005 RID: 5
	internal class ApplicationSettings
	{
		// Token: 0x17000010 RID: 16
		// (get) Token: 0x06000027 RID: 39 RVA: 0x0000225A File Offset: 0x0000045A
		// (set) Token: 0x06000028 RID: 40 RVA: 0x00002261 File Offset: 0x00000461
		public static bool Status { get; set; }

		// Token: 0x17000011 RID: 17
		// (get) Token: 0x06000029 RID: 41 RVA: 0x00002269 File Offset: 0x00000469
		// (set) Token: 0x0600002A RID: 42 RVA: 0x00002270 File Offset: 0x00000470
		public static bool DeveloperMode { get; set; }

		// Token: 0x17000012 RID: 18
		// (get) Token: 0x0600002B RID: 43 RVA: 0x00002278 File Offset: 0x00000478
		// (set) Token: 0x0600002C RID: 44 RVA: 0x0000227F File Offset: 0x0000047F
		public static string Hash { get; set; }

		// Token: 0x17000013 RID: 19
		// (get) Token: 0x0600002D RID: 45 RVA: 0x00002287 File Offset: 0x00000487
		// (set) Token: 0x0600002E RID: 46 RVA: 0x0000228E File Offset: 0x0000048E
		public static string Version { get; set; }

		// Token: 0x17000014 RID: 20
		// (get) Token: 0x0600002F RID: 47 RVA: 0x00002296 File Offset: 0x00000496
		// (set) Token: 0x06000030 RID: 48 RVA: 0x0000229D File Offset: 0x0000049D
		public static string Update_Link { get; set; }

		// Token: 0x17000015 RID: 21
		// (get) Token: 0x06000031 RID: 49 RVA: 0x000022A5 File Offset: 0x000004A5
		// (set) Token: 0x06000032 RID: 50 RVA: 0x000022AC File Offset: 0x000004AC
		public static bool Freemode { get; set; }

		// Token: 0x17000016 RID: 22
		// (get) Token: 0x06000033 RID: 51 RVA: 0x000022B4 File Offset: 0x000004B4
		// (set) Token: 0x06000034 RID: 52 RVA: 0x000022BB File Offset: 0x000004BB
		public static bool Login { get; set; }

		// Token: 0x17000017 RID: 23
		// (get) Token: 0x06000035 RID: 53 RVA: 0x000022C3 File Offset: 0x000004C3
		// (set) Token: 0x06000036 RID: 54 RVA: 0x000022CA File Offset: 0x000004CA
		public static string Name { get; set; }

		// Token: 0x17000018 RID: 24
		// (get) Token: 0x06000037 RID: 55 RVA: 0x000022D2 File Offset: 0x000004D2
		// (set) Token: 0x06000038 RID: 56 RVA: 0x000022D9 File Offset: 0x000004D9
		public static bool Register { get; set; }
	}
}
