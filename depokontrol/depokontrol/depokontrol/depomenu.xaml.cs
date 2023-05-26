using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace depokontrol
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class depomenu : ContentPage
    {
        public IList<list_barang> list_Barangs { get; set; }
        public depomenu()
        {
            InitializeComponent();
            data_list();         
        }
        public class list_barang
        {
            public Image image;
            public int id { get; set; }
            public string adi { get; set; }
            public string ozelligi { get; set; }
            public string adet { get; set; }
            public DateTime tarihi { get; set; }
            public string depo { get; set; }
        }
    
        private  void data_list()
        {                 
            var koneksi = new MySqlConnection(Properties.Resources.db_con);
            koneksi.Open();            
            var cmd = new MySqlCommand("SELECT * FROM `urun_takip` ", koneksi);
            var read = cmd.ExecuteReader();
            list_Barangs = new List<list_barang>();
            while (read.Read())
            {
                list_Barangs.Add(new list_barang
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
            listeleme.ItemsSource=list_Barangs;
        }
        private void qrclicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Qrcode_okuma());
        }
        private void qrcodemenu(object sender, EventArgs e)
        {
            ImageButton x = (ImageButton)sender;
            string edit_select = x.CommandParameter.ToString();
            Application.Current.Properties["updatee"] = edit_select;
            Navigation.PushAsync(new QrCode());
        }

        private void urun_ekleme(object sender,EventArgs e)
        {
            Navigation.PushAsync(new urun_ekleme());
        }
        private void editbutton(object sender, EventArgs e)
        {
            ImageButton x =(ImageButton)sender; 
            string edit_select = x.CommandParameter.ToString();
            Application.Current.Properties["update"]= edit_select;
            Navigation.PushAsync(new urun_update());
        }  
        private void urun_bulma(object sender, EventArgs e)
        {
            Navigation.PushAsync(new urun_searc());
        }
    }
}