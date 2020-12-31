namespace fastnsh
{
	// Token: 0x0200000B RID: 11
	public partial class Form1 : global::System.Windows.Forms.Form
	{
		// Token: 0x06000062 RID: 98 RVA: 0x00004634 File Offset: 0x00002834
		protected override void Dispose(bool disposing)
		{
			bool flag = disposing && this.components != null;
			if (flag)
			{
				this.components.Dispose();
			}
			base.Dispose(disposing);
		}

		// Token: 0x06000063 RID: 99 RVA: 0x0000466C File Offset: 0x0000286C
		private void InitializeComponent()
		{
			global::System.ComponentModel.ComponentResourceManager componentResourceManager = new global::System.ComponentModel.ComponentResourceManager(typeof(global::fastnsh.Form1));
			this.cxFlatStatusBar1 = new global::CxFlatUI.CxFlatStatusBar();
			this.password = new global::System.Windows.Forms.TextBox();
			this.label1 = new global::System.Windows.Forms.Label();
			this.label2 = new global::System.Windows.Forms.Label();
			this.username = new global::System.Windows.Forms.TextBox();
			this.pictureBox3 = new global::System.Windows.Forms.PictureBox();
			this.bunifuFlatButton1 = new global::Bunifu.Framework.UI.BunifuFlatButton();
			this.pictureBox2 = new global::System.Windows.Forms.PictureBox();
			this.pictureBox1 = new global::System.Windows.Forms.PictureBox();
			this.bunifuFlatButton2 = new global::Bunifu.Framework.UI.BunifuFlatButton();
			((global::System.ComponentModel.ISupportInitialize)this.pictureBox3).BeginInit();
			((global::System.ComponentModel.ISupportInitialize)this.pictureBox2).BeginInit();
			((global::System.ComponentModel.ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.cxFlatStatusBar1.Anchor = (global::System.Windows.Forms.AnchorStyles.Top | global::System.Windows.Forms.AnchorStyles.Left | global::System.Windows.Forms.AnchorStyles.Right);
			this.cxFlatStatusBar1.Font = new global::System.Drawing.Font("Segoe UI", 12f);
			this.cxFlatStatusBar1.Location = new global::System.Drawing.Point(0, 0);
			this.cxFlatStatusBar1.Name = "cxFlatStatusBar1";
			this.cxFlatStatusBar1.Size = new global::System.Drawing.Size(744, 40);
			this.cxFlatStatusBar1.TabIndex = 1;
			this.cxFlatStatusBar1.Text = "FastNexus - Optimize Your PC's";
			this.cxFlatStatusBar1.ThemeColor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.password.BackColor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.password.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.password.Cursor = global::System.Windows.Forms.Cursors.IBeam;
			this.password.Font = new global::System.Drawing.Font("Microsoft Sans Serif", 21.75f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.password.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.password.Location = new global::System.Drawing.Point(268, 265);
			this.password.Margin = new global::System.Windows.Forms.Padding(4);
			this.password.Multiline = true;
			this.password.Name = "password";
			this.password.Size = new global::System.Drawing.Size(235, 35);
			this.password.TabIndex = 8;
			this.label1.AutoSize = true;
			this.label1.Font = new global::System.Drawing.Font("Arial", 8.25f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.label1.ForeColor = global::System.Drawing.Color.GhostWhite;
			this.label1.Location = new global::System.Drawing.Point(666, 417);
			this.label1.Name = "label1";
			this.label1.Size = new global::System.Drawing.Size(66, 14);
			this.label1.TabIndex = 11;
			this.label1.Text = "© Nexus Inc";
			this.label2.AutoSize = true;
			this.label2.Location = new global::System.Drawing.Point(456, 383);
			this.label2.Name = "label2";
			this.label2.Size = new global::System.Drawing.Size(0, 13);
			this.label2.TabIndex = 12;
			this.username.BackColor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.username.BorderStyle = global::System.Windows.Forms.BorderStyle.None;
			this.username.Cursor = global::System.Windows.Forms.Cursors.IBeam;
			this.username.Font = new global::System.Drawing.Font("Microsoft Sans Serif", 21.75f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.username.ForeColor = global::System.Drawing.Color.WhiteSmoke;
			this.username.Location = new global::System.Drawing.Point(268, 190);
			this.username.Margin = new global::System.Windows.Forms.Padding(4);
			this.username.Multiline = true;
			this.username.Name = "username";
			this.username.Size = new global::System.Drawing.Size(235, 35);
			this.username.TabIndex = 13;
			this.pictureBox3.Image = global::fastnsh.Properties.Resources.user__4_;
			this.pictureBox3.Location = new global::System.Drawing.Point(215, 190);
			this.pictureBox3.Name = "pictureBox3";
			this.pictureBox3.Size = new global::System.Drawing.Size(34, 35);
			this.pictureBox3.TabIndex = 14;
			this.pictureBox3.TabStop = false;
			this.bunifuFlatButton1.Activecolor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton1.BackColor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton1.BackgroundImageLayout = global::System.Windows.Forms.ImageLayout.Stretch;
			this.bunifuFlatButton1.BorderRadius = 0;
			this.bunifuFlatButton1.ButtonText = "CONNEXION";
			this.bunifuFlatButton1.Cursor = global::System.Windows.Forms.Cursors.Hand;
			this.bunifuFlatButton1.DisabledColor = global::System.Drawing.Color.Gray;
			this.bunifuFlatButton1.Iconcolor = global::System.Drawing.Color.Transparent;
			this.bunifuFlatButton1.Iconimage = (global::System.Drawing.Image)componentResourceManager.GetObject("bunifuFlatButton1.Iconimage");
			this.bunifuFlatButton1.Iconimage_right = null;
			this.bunifuFlatButton1.Iconimage_right_Selected = null;
			this.bunifuFlatButton1.Iconimage_Selected = null;
			this.bunifuFlatButton1.IconMarginLeft = 0;
			this.bunifuFlatButton1.IconMarginRight = 0;
			this.bunifuFlatButton1.IconRightVisible = true;
			this.bunifuFlatButton1.IconRightZoom = 0.0;
			this.bunifuFlatButton1.IconVisible = true;
			this.bunifuFlatButton1.IconZoom = 90.0;
			this.bunifuFlatButton1.IsTab = false;
			this.bunifuFlatButton1.Location = new global::System.Drawing.Point(299, 334);
			this.bunifuFlatButton1.Name = "bunifuFlatButton1";
			this.bunifuFlatButton1.Normalcolor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton1.OnHovercolor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton1.OnHoverTextColor = global::System.Drawing.Color.White;
			this.bunifuFlatButton1.selected = false;
			this.bunifuFlatButton1.Size = new global::System.Drawing.Size(157, 48);
			this.bunifuFlatButton1.TabIndex = 10;
			this.bunifuFlatButton1.Text = "CONNEXION";
			this.bunifuFlatButton1.TextAlign = global::System.Drawing.ContentAlignment.MiddleLeft;
			this.bunifuFlatButton1.Textcolor = global::System.Drawing.Color.White;
			this.bunifuFlatButton1.TextFont = new global::System.Drawing.Font("Microsoft Sans Serif", 9.75f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.bunifuFlatButton1.Click += new global::System.EventHandler(this.bunifuFlatButton1_Click);
			this.pictureBox2.Image = global::fastnsh.Properties.Resources.locked_padloc2k;
			this.pictureBox2.Location = new global::System.Drawing.Point(215, 262);
			this.pictureBox2.Name = "pictureBox2";
			this.pictureBox2.Size = new global::System.Drawing.Size(34, 38);
			this.pictureBox2.TabIndex = 3;
			this.pictureBox2.TabStop = false;
			this.pictureBox1.Image = (global::System.Drawing.Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.Location = new global::System.Drawing.Point(337, 87);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new global::System.Drawing.Size(65, 66);
			this.pictureBox1.TabIndex = 0;
			this.pictureBox1.TabStop = false;
			this.bunifuFlatButton2.Activecolor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton2.BackColor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton2.BackgroundImageLayout = global::System.Windows.Forms.ImageLayout.Stretch;
			this.bunifuFlatButton2.BorderRadius = 0;
			this.bunifuFlatButton2.ButtonText = "CONNEXION ";
			this.bunifuFlatButton2.Cursor = global::System.Windows.Forms.Cursors.Hand;
			this.bunifuFlatButton2.DisabledColor = global::System.Drawing.Color.Gray;
			this.bunifuFlatButton2.Iconcolor = global::System.Drawing.Color.Transparent;
			this.bunifuFlatButton2.Iconimage = (global::System.Drawing.Image)componentResourceManager.GetObject("bunifuFlatButton2.Iconimage");
			this.bunifuFlatButton2.Iconimage_right = null;
			this.bunifuFlatButton2.Iconimage_right_Selected = null;
			this.bunifuFlatButton2.Iconimage_Selected = null;
			this.bunifuFlatButton2.IconMarginLeft = 0;
			this.bunifuFlatButton2.IconMarginRight = 0;
			this.bunifuFlatButton2.IconRightVisible = true;
			this.bunifuFlatButton2.IconRightZoom = 0.0;
			this.bunifuFlatButton2.IconVisible = true;
			this.bunifuFlatButton2.IconZoom = 90.0;
			this.bunifuFlatButton2.IsTab = false;
			this.bunifuFlatButton2.Location = new global::System.Drawing.Point(271, 199);
			this.bunifuFlatButton2.Name = "bunifuFlatButton2";
			this.bunifuFlatButton2.Normalcolor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton2.OnHovercolor = global::System.Drawing.Color.FromArgb(56, 55, 55);
			this.bunifuFlatButton2.OnHoverTextColor = global::System.Drawing.Color.White;
			this.bunifuFlatButton2.selected = false;
			this.bunifuFlatButton2.Size = new global::System.Drawing.Size(185, 70);
			this.bunifuFlatButton2.TabIndex = 15;
			this.bunifuFlatButton2.Text = "CONNEXION ";
			this.bunifuFlatButton2.TextAlign = global::System.Drawing.ContentAlignment.MiddleLeft;
			this.bunifuFlatButton2.Textcolor = global::System.Drawing.Color.White;
			this.bunifuFlatButton2.TextFont = new global::System.Drawing.Font("Microsoft Sans Serif", 9.75f, global::System.Drawing.FontStyle.Regular, global::System.Drawing.GraphicsUnit.Point, 0);
			this.bunifuFlatButton2.Click += new global::System.EventHandler(this.bunifuFlatButton2_Click);
			base.AutoScaleDimensions = new global::System.Drawing.SizeF(6f, 13f);
			base.AutoScaleMode = global::System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = global::System.Drawing.Color.FromArgb(38, 39, 40);
			base.ClientSize = new global::System.Drawing.Size(744, 440);
			base.Controls.Add(this.bunifuFlatButton2);
			base.Controls.Add(this.pictureBox3);
			base.Controls.Add(this.username);
			base.Controls.Add(this.label2);
			base.Controls.Add(this.label1);
			base.Controls.Add(this.bunifuFlatButton1);
			base.Controls.Add(this.password);
			base.Controls.Add(this.pictureBox2);
			base.Controls.Add(this.cxFlatStatusBar1);
			base.Controls.Add(this.pictureBox1);
			this.ForeColor = global::System.Drawing.Color.Teal;
			base.FormBorderStyle = global::System.Windows.Forms.FormBorderStyle.None;
			base.Icon = (global::System.Drawing.Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			this.MaximumSize = new global::System.Drawing.Size(1366, 768);
			base.Name = "Form1";
			base.StartPosition = global::System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FastNexus - Online";
			base.Load += new global::System.EventHandler(this.Form1_Load);
			((global::System.ComponentModel.ISupportInitialize)this.pictureBox3).EndInit();
			((global::System.ComponentModel.ISupportInitialize)this.pictureBox2).EndInit();
			((global::System.ComponentModel.ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
			base.PerformLayout();
		}

		// Token: 0x0400002A RID: 42
		private global::System.ComponentModel.IContainer components = null;

		// Token: 0x0400002B RID: 43
		private global::System.Windows.Forms.PictureBox pictureBox1;

		// Token: 0x0400002C RID: 44
		private global::CxFlatUI.CxFlatStatusBar cxFlatStatusBar1;

		// Token: 0x0400002D RID: 45
		private global::System.Windows.Forms.PictureBox pictureBox2;

		// Token: 0x0400002E RID: 46
		private global::System.Windows.Forms.TextBox password;

		// Token: 0x0400002F RID: 47
		private global::Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton1;

		// Token: 0x04000030 RID: 48
		private global::System.Windows.Forms.Label label1;

		// Token: 0x04000031 RID: 49
		private global::System.Windows.Forms.Label label2;

		// Token: 0x04000032 RID: 50
		private global::System.Windows.Forms.TextBox username;

		// Token: 0x04000033 RID: 51
		private global::System.Windows.Forms.PictureBox pictureBox3;

		// Token: 0x04000034 RID: 52
		private global::Bunifu.Framework.UI.BunifuFlatButton bunifuFlatButton2;
	}
}
