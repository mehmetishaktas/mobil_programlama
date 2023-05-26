using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing;
using ZXing.Net.Mobile.Forms;
using static depokontrol.depomenu;
using static depokontrol.urun_searc;

namespace depokontrol
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class urun_searc : ContentPage
    {
        public IList<listele> liste { get; set; }
        public urun_searc()
        {
            InitializeComponent();
        }
        public class listele
        {
            public Image image;
            public int id { get; set; }
            public string adi { get; set; }
            public string ozelligi { get; set; }
            public string adet { get; set; }
            public DateTime tarihi { get; set; }
            public string depo { get; set; }
        }
        private void data_list()
        {
            
        }
        private void bul(object sender, EventArgs e)
        {

            if(urun_id.Text != null)
            {
                var koneksi = new MySqlConnection(Properties.Resources.db_con);
                koneksi.Open();
                var cmd = new MySqlCommand("SELECT * FROM `urun_takip` where urun_id='"+urun_id.Text+"' ", koneksi);
                var read = cmd.ExecuteReader();
                liste = new List<listele>();
                while (read.Read())
                {
                    liste.Add(new listele
                    {
                        id = read.GetInt32("urun_id"),
                        adi = read.GetString("urun_adi").ToString(),
                        ozelligi = read.GetString("urun_ozelligi").ToString(),
                        adet = read.GetString("urun_adet").ToString(),
                        tarihi = read.GetDateTime("urun_tarih"),
                        depo = read.GetString("bulundugu_depo").ToString()
                    });
                }
                read.Close();
                bulma.ItemsSource = liste;

                koneksi.Close();  
                urun_id.Text = null;
            }
            else if (urun_adi.Text != null)
            {
                var koneksi = new MySqlConnection(Properties.Resources.db_con);
                koneksi.Open();
                var cmd = new MySqlCommand("SELECT * FROM `urun_takip` where urun_adi='" + urun_adi.Text + "' ", koneksi);
                var read = cmd.ExecuteReader();
                liste = new List<listele>();
                while (read.Read())
                {
                    liste.Add(new listele
                    {
                        id = read.GetInt32("urun_id"),
                        adi = read.GetString("urun_adi").ToString(),
                        ozelligi = read.GetString("urun_ozelligi").ToString(),
                        adet = read.GetString("urun_adet").ToString(),
                        tarihi = read.GetDateTime("urun_tarih"),
                        depo = read.GetString("bulundugu_depo").ToString()
                    });
                }
                read.Close();
                bulma.ItemsSource = liste;

                koneksi.Close();
                urun_adi.Text = null;
            }
            else if (urun_ozeligi.Text != null) 
            {
                var koneksi = new MySqlConnection(Properties.Resources.db_con);
                koneksi.Open();
                var cmd = new MySqlCommand("SELECT * FROM `urun_takip` where urun_ozelligi='" + urun_ozeligi.Text + "' ", koneksi);
                var read = cmd.ExecuteReader();
                liste = new List<listele>();
                while (read.Read())
                {
                    liste.Add(new listele
                    {
                        id = read.GetInt32("urun_id"),
                        adi = read.GetString("urun_adi").ToString(),
                        ozelligi = read.GetString("urun_ozelligi").ToString(),
                        adet = read.GetString("urun_adet").ToString(),
                        tarihi = read.GetDateTime("urun_tarih"),
                        depo = read.GetString("bulundugu_depo").ToString()
                    });
                }
                read.Close();
                bulma.ItemsSource = liste;

                koneksi.Close();
                urun_ozeligi.Text = null;
            }
            else if (urun_adet.Text != null)
            {
                var koneksi = new MySqlConnection(Properties.Resources.db_con);
                koneksi.Open();
                var cmd = new MySqlCommand("SELECT * FROM `urun_takip` where urun_adet='" + urun_adet.Text + "' ", koneksi);
                var read = cmd.ExecuteReader();
                liste = new List<listele>();
                while (read.Read())
                {
                    liste.Add(new listele
                    {
                        id = read.GetInt32("urun_id"),
                        adi = read.GetString("urun_adi").ToString(),
                        ozelligi = read.GetString("urun_ozelligi").ToString(),
                        adet = read.GetString("urun_adet").ToString(),
                        tarihi = read.GetDateTime("urun_tarih"),
                        depo = read.GetString("bulundugu_depo").ToString()
                    });
                }
                read.Close();
                bulma.ItemsSource = liste;

                koneksi.Close();
                urun_adet.Text = null;
            }
            else if (depo.Text != null)
            {
                var koneksi = new MySqlConnection(Properties.Resources.db_con);
                koneksi.Open();
                var cmd = new MySqlCommand("SELECT * FROM `urun_takip` where bulundugu_depo='" + depo.Text + "' ", koneksi);
                var read = cmd.ExecuteReader();
                liste = new List<listele>();
                while (read.Read())
                {
                    liste.Add(new listele
                    {
                        id = read.GetInt32("urun_id"),
                        adi = read.GetString("urun_adi").ToString(),
                        ozelligi = read.GetString("urun_ozelligi").ToString(),
                        adet = read.GetString("urun_adet").ToString(),
                        tarihi = read.GetDateTime("urun_tarih"),
                        depo = read.GetString("bulundugu_depo").ToString()
                    });
                }
                read.Close();
                bulma.ItemsSource = liste;

                koneksi.Close();
                depo.Text= null;
            }
            else
            {
                DisplayAlert("SORUN", "LÜTFEN ARAMAK İSTEDİĞİNİZ ÜRÜNLE İLGİLİ BİR İPUCU VERİNİZ", "TAMAM");
            }
           
        }
        public  async void qrcodefound(object sender, EventArgs e)
        {
            var scan = new ZXingScannerPage();
            await Navigation.PushAsync(scan);
            scan.OnScanResult += (result) =>
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await Navigation.PopAsync();

                    urun_id.Text = result.Text;
                    
                });
            };
        }
    }
}