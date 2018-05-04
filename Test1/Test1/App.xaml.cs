using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Test1.View;
using Test1.ViewModel;

namespace Test1
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public App()
        {
            var mw = new MainWindowView()
            {
                DataContext = new MainViewModel()
            };
            
            mw.Show();
        }
    }
}
