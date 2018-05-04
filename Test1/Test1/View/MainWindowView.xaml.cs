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
using GalaSoft.MvvmLight.Helpers;
using Test1.View;


namespace Test1.View
{
    
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindowView : Window
    {
        
        
        public MainWindowView()
        {
            
            InitializeComponent();
            
        }

        

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void TreeViewItem_Selected(object sender, RoutedEventArgs e)
        {
            ContentControl1.Content =  new UserControl1();
        }

        
    }
}
