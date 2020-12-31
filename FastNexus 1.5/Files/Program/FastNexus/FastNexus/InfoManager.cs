using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Text.RegularExpressions;
using System.Threading;

namespace fastnsh
{
	// Token: 0x0200000A RID: 10
	internal class InfoManager
	{
		// Token: 0x06000055 RID: 85 RVA: 0x000041B2 File Offset: 0x000023B2
		public InfoManager()
		{
			this.lastGateway = this.GetGatewayMAC();
		}

		// Token: 0x06000056 RID: 86 RVA: 0x000041C8 File Offset: 0x000023C8
		public void StartListener()
		{
			this.timer = new Timer(delegate(object _)
			{
				this.OnCallBack();
			}, null, 5000, -1);
		}

		// Token: 0x06000057 RID: 87 RVA: 0x000041E9 File Offset: 0x000023E9
		private void OnCallBack()
		{
			this.timer.Dispose();
			this.lastGateway = this.GetGatewayMAC();
			this.timer = new Timer(delegate(object _)
			{
				this.OnCallBack();
			}, null, 5000, -1);
		}

		// Token: 0x06000058 RID: 88 RVA: 0x00004224 File Offset: 0x00002424
		public static IPAddress GetDefaultGateway()
		{
			return (from g in (from n in NetworkInterface.GetAllNetworkInterfaces()
			where n.OperationalStatus == OperationalStatus.Up
			where n.NetworkInterfaceType != NetworkInterfaceType.Loopback
			select n).SelectMany(delegate(NetworkInterface n)
			{
				IPInterfaceProperties ipproperties = n.GetIPProperties();
				return (ipproperties != null) ? ipproperties.GatewayAddresses : null;
			})
			select (g != null) ? g.Address : null into a
			where a != null
			select a).FirstOrDefault<IPAddress>();
		}

		// Token: 0x06000059 RID: 89 RVA: 0x000042F4 File Offset: 0x000024F4
		private string GetArpTable()
		{
			string pathRoot = Path.GetPathRoot(Environment.SystemDirectory);
			string result;
			using (Process process = Process.Start(new ProcessStartInfo
			{
				FileName = string.Format("{0}Windows\\System32\\arp.exe", pathRoot),
				Arguments = "-a",
				UseShellExecute = false,
				RedirectStandardOutput = true,
				CreateNoWindow = true
			}))
			{
				using (StreamReader standardOutput = process.StandardOutput)
				{
					result = standardOutput.ReadToEnd();
				}
			}
			return result;
		}

		// Token: 0x0600005A RID: 90 RVA: 0x00004398 File Offset: 0x00002598
		private string GetGatewayMAC()
		{
			string arg = InfoManager.GetDefaultGateway().ToString();
			string pattern = string.Format("({0} [\\W]*) ([a-z0-9-]*)", arg);
			Regex regex = new Regex(pattern);
			Match match = regex.Match(this.GetArpTable());
			return match.Groups[2].ToString();
		}

		// Token: 0x04000028 RID: 40
		private Timer timer;

		// Token: 0x04000029 RID: 41
		private string lastGateway;
	}
}
