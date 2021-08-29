using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
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
using Telegram.Bot;

namespace TelegramBotOne
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ObservableCollection<TelegramUser> Users;
        TelegramBotClient bot;
        public MainWindow()
        {
            InitializeComponent();
            Users = new ObservableCollection<TelegramUser>(); // инициализация коллекции пользователей

            usersList.ItemsSource = Users; // устоновка источника данных


            //1130387079:AAFy-HZQAtJtVfSek-yS5uFKOh1mTrBqeKQ
            string token = "1130387079:AAFy-HZQAtJtVfSek-yS5uFKOh1mTrBqeKQ";

            bot = new TelegramBotClient(token); //инициализация клиента

            //обработка входящих сообщений
            bot.OnMessage += delegate (object sender, Telegram.Bot.Args.MessageEventArgs e)
            {
                string msg = $"{DateTime.Now}: {e.Message.Chat.FirstName} {e.Message.Chat.Id} {e.Message.Text}";

                File.AppendAllText("data.log", $"{msg}\n"); //логирование запросов

                Debug.WriteLine(msg);

                //обработка добавления данных в UI
                this.Dispatcher.Invoke(() =>
                {
                    var person = new TelegramUser(e.Message.Chat.FirstName, e.Message.Chat.Id);
                    if (!Users.Contains(person)) Users.Add(person);
                    Users[Users.IndexOf(person)].AddMessage($"{person.Nick}: {e.Message.Text}");
                });
            };


            bot.StartReceiving(); //запуск сервиса обработки входящих запросов

            //Обработка сообщения по клику кнопки и клавишей enter
            btnSendMsg.Click += delegate { SendMsg(); };
            txtBxSendMsg.KeyDown += (s, e) => { if (e.Key == Key.Return) { SendMsg(); } };
        }

        /// <summary>
        /// логика отправки сообщения
        /// </summary>
        public void SendMsg()
        {
            var concreteUser = Users[Users.IndexOf(usersList.SelectedItem as TelegramUser)];
            string responseMsg = $"Вы: {txtBxSendMsg.Text}";
            concreteUser.Messages.Add(responseMsg);

            bot.SendTextMessageAsync(concreteUser.Id, txtBxSendMsg.Text);
            string logText = $"{DateTime.Now}: >> {concreteUser.Id} {concreteUser.Nick} {responseMsg}";
            File.AppendAllText("data.log", logText); //логирование заросов

            txtBxSendMsg.Text = String.Empty;
        }

    }
}
