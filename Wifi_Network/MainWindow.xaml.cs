using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Diagnostics;

namespace Wifi_Network
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Process pr = new Process();
        String User_Name;
        String Password;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void CloseBtn_Click(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            this.Close();
        }

        private void StartBtn_Click(object sender, RoutedEventArgs e)
        {
            if (SSidLst.Text == "")
            {
                MessageBox.Show("You must enter a name for your network in SSid field", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else if (PasswordLst.Text=="")
            {
                MessageBox.Show("You must set a password for your network in Password field", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else if (PasswordLst.Text.Length < 8)
            {
                MessageBox.Show("Your password must be 8 characters or more", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else if (SSidLst.Text.IndexOf(' ') >= 0)
            {
                MessageBox.Show("Your NetworkName mustn't contain space", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else if (PasswordLst.Text.IndexOf(' ') >= 0)
            {
                MessageBox.Show("Your password mustn't contain space", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                User_Name = SSidLst.Text;
                Password = PasswordLst.Text;
                String Set_Hostednetwork_CMD = String.Format("netsh wlan set hostednetwork mode=allow ssid=" + User_Name + " key=" + Password);
                String Start_Hostednetwork = "netsh wlan start hostednetwork";
                pr.StartInfo.Verb = "Runas";
                pr.StartInfo.FileName = "CMD.exe";
                pr.StartInfo.Arguments = "/C" + Set_Hostednetwork_CMD;
                pr.Start();
                pr.StartInfo.Arguments = "/C" + Start_Hostednetwork;
                pr.Start();
            }
        }
  
        private void StopBtn_Click(object sender, RoutedEventArgs e)
        {
            String Stop_Hostednetwork = "netsh wlan stop hostednetwork";
            pr.StartInfo.Verb = "Runas";
            pr.StartInfo.FileName = "CMD.exe";
            pr.StartInfo.Arguments = "/C" + Stop_Hostednetwork;
            pr.Start();
            
        }

        private void CloseBtn_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

    }
}
