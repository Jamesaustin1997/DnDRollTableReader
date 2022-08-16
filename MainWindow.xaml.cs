using System;
using System.IO;
using System.Windows;

namespace DndRollTableApp
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        public void CreateCSVFile()
        {
            var excelReader = Sylvan.Data.Excel.ExcelDataReader.Create(FilePath);
            var filepathWithoutExtension = FilePath.Remove(FilePath.Length - 5);
            var csvFileWriter = Sylvan.Data.Csv.CsvDataWriter.Create($@"{filepathWithoutExtension}.csv");
            
            csvFileWriter.Write(excelReader);
            
            SleepApplication();
            
            excelReader.Close();

            LoadSpreadsheet();
        }

        public void LoadSpreadsheet()
        {
            var filepathWithoutExtension = FilePath.Remove(FilePath.Length - 5);

            using (var reader = new StreamReader($@"{filepathWithoutExtension}.csv"))
            {
                int xIndex = 0;
                var line = reader.ReadLine();

                var values = line.Split(',');

                var columnHeadings = new string[values.Length];
                
                if (xIndex == 0)
                {
                    columnHeadings = values;
                    xIndex++;
                }

                var dataArray = new string[100, values.Length];
                
                while (!reader.EndOfStream)
                {
                    for (int yIndex = 0; yIndex < values.Length; yIndex++)
                    {
                        dataArray[xIndex, yIndex] = values[yIndex];
                    }
                    xIndex++;
                }
                DataFromSpreadsheet = dataArray;
                selection.ItemsSource = columnHeadings;
            }
        }

        private void OnButtonClick(object sender, RoutedEventArgs e)
        {
            if (DataFromSpreadsheet == null) CreateCSVFile();
            
            if (selection.SelectedIndex == -1) outcome.Text = "No column was selected to search upon";
            else
            {
                RollDice(DataFromSpreadsheet);
            }
        }
        
        private void RollDice(string[,] columnData)
        {
            Random rnd = new Random();
            var roll = rnd.Next(1, 100);
            
            outcome.Text = $"We rolled:{roll} + {columnData[roll, selection.SelectedIndex]}";
        }

        private void SleepApplication()
        {
            for (var sleepTimer = 0; sleepTimer < 1000; sleepTimer++) { }
        }

        private void LoadSpreadsheet(object sender, RoutedEventArgs e)
        {
            if (CheckInputPath() == false) return;

            FilePath = text.Text;

            CreateCSVFile();
        }

        private bool CheckInputPath()
        {
            if (text.Text == null || text.Text == String.Empty)
            {
                outcome.Text = "You can not do this as we need to load the Spreadsheet";
                return false;
            }

            return true;
        }

        public string FilePath { get; set; }
        public string[,] DataFromSpreadsheet { get; set; }
    }
}
