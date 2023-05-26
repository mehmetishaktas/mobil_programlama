
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using MySqlConnector;
using Xamarin.Forms.PlatformConfiguration;

namespace depokontrol
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class login : ContentPage
    {
        public login()
        {
            InitializeComponent();


        }
        
        private  void Button_Clicked(object sender, EventArgs e)
        {
     
            depomenu menu = new depomenu();
     
            var baglanti = new MySqlConnection(Properties.Resources.db_con);
            baglanti.Open();                      
            var cmd = new MySqlCommand("SELECT * FROM `kullanici` WHERE kullanici_adi='"+kadi.Text+"'and sifre='"+sifre.Text+ "' ", baglanti);
            var rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                DisplayAlert("HOŞGELDİNİZ","giriş başarılı", "Tamam");
                Navigation.PushAsync(new depomenu());
               
                
            }
            else
            {
             DisplayAlert("GİRİŞ BAŞARISIZ","TEKRAR DENEYİNİZ","TAMAM");
            }

        }
    }
}

  