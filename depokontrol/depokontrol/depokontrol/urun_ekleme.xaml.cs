using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using MySqlConnector;

namespace depokontrol
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class urun_ekleme : ContentPage
    {
        public urun_ekleme()
        {
            InitializeComponent();
        }
        private void ekle(object sender, EventArgs e)
        {
            var koneksi = new MySqlConnection(Properties.Resources.db_con);
            koneksi.Open();
            var cmd = new MySqlCommand("INSERT INTO `urun_takip`( `urun_adi`, `urun_ozelligi`, `urun_adet`,`bulundugu_depo`) VALUES ('"+urun_adi.Text+"','"+urun_ozeligi.Text+"','"+urun_adet.Text+"','"+depo.Text+"')", koneksi);
            var read = cmd.ExecuteReader();
            koneksi.Close();
            DisplayAlert("BAŞARILI", "ÜRÜN EKLENDİ","TAMAM");
            Navigation.PushAsync(new depomenu());
        }
    }
}