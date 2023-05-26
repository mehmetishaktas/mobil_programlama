using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing;
using ZXing.Net.Mobile.Forms;

namespace depokontrol
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class QrCode : ContentPage
    {
        ZXingBarcodeImageView barcode;
        string update = Convert.ToString(Application.Current.Properties["updatee"]);
        public QrCode()
        {         
            InitializeComponent();
            id.Text = update;
            Task.Delay(2000);
            
            barcode = new ZXingBarcodeImageView
            {
                HorizontalOptions = LayoutOptions.FillAndExpand,
                VerticalOptions = LayoutOptions.FillAndExpand,
                AutomationId = "deneme",
            };
            barcode.BarcodeFormat = ZXing.BarcodeFormat.QR_CODE;
            barcode.BarcodeOptions.Width = 200;
            barcode.BarcodeOptions.Height = 200;
            barcode.BarcodeOptions.Margin = 10;
            barcode.BarcodeValue = id.Text;
            qrcodee.Children.Insert(1, barcode);
        }
    }
}   