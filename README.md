# Nexus-Hardware.fr


[Fast Nexus 1.5](https://github.com/Leaked0/Nexus-Hardware.fr/tree/main/FastNexus%201.5/Files/Program)<br>Program wasn't obfuscated<br><br>
To "patch" it:

```csharp
RegistryKey registryKey = Registry.CurrentUser.CreateSubKey("Software\\FastNexus");
registryKey.SetValue("Premium", "1");
```

Or in "Form3" change

```csharp
if (Registry.GetValue("HKEY_CURRENT_USER\\Software\\FastNexus", "Premium", null) == null)
{
	this.tabPage6.Hide();
	this.cxFlatTabControl1.TabPages.Remove(this.tabPage6);
}
else
{
	this.tabPage6.Show();
	this.cxFlatTabControl1.TabPages.Insert(0, this.tabPage6);
}
```

to

```csharp
if (Registry.GetValue("HKEY_CURRENT_USER\\Software\\FastNexus", "Premium", null) == null)
{
	MessageBox.Show("Useless");
	this.tabPage6.Show();
	this.cxFlatTabControl1.TabPages.Insert(0, this.tabPage6);
}
else
{
	this.tabPage6.Show();
	this.cxFlatTabControl1.TabPages.Insert(0, this.tabPage6);
}
```
