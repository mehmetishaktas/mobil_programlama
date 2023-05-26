using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using MySqlConnector;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace depokontrol
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class urun_update : ContentPage
	{
        string update = Convert.ToString(Application.Current.Properties["update"]);      
        public urun_update ()
		{
			
			InitializeComponent ();
			id.Text = update;
			Task.Delay(2000);
			data_update();
		}

		private void data_update()
		{
			var koneksi = new MySqlConnection(Properties.Resources.db_con);
			koneksi.Open ();
			var cmd = new MySqlCommand ("select * from urun_takip",koneksi);
			var rd = cmd.ExecuteReader ();
			if (rd.Read())
			{
				urun_adi.Text=rd.GetString("urun_adi").ToString();
				urun_ozeligi.Text=rd.GetString("urun_ozelligi").ToString();
				urun_adet.Text = rd.GetString("urun_adet").ToString();
				depo.Text = rd.GetString("bulundugu_depo").ToString();
			}
		}
		private void ekle(object sender, EventArgs e)
		{
			if (urun_adi == null)
			{
				urun_adi.Focus();
			}
			else if (urun_ozeligi == null)
			{ 
				urun_ozeligi.Focus();
			}
			else if(urun_adet == null)
			{
				urun_adet.Focus();
			}
			else if (depo == null)
			{
				depo.Focus();
			}
			else
			{
				var koneksi = new MySqlConnection(Properties.Resources.db_con);
				koneksi.Open ();
				var cmd = new MySqlCommand("UPDATE `urun_takip` SET `urun_adi`='"+urun_adi.Text+"',`urun_ozelligi`='"+urun_ozeligi.Text+"',`urun_adet`='"+urun_adet.Text+"',`bulundugu_depo`='"+depo.Text+"' WHERE urun_id='"+id.Text+"'", koneksi);
				 var rd  =cmd.ExecuteReader ();
				DisplayAlert("UYARI", "VERİ DEĞİŞTİRİLDİ", "OK");
				Navigation.PushAsync(new depomenu());
			}
		}
	}
}