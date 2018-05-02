using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.CodeAnalysis;
using Newtonsoft.Json;

namespace Inucy_test_web.Models
{
    public class ComputerPost
    {
        public int IdComputer { get; set;}
        public char Computer { get; set; }
        public char Type { get; set; }
        public char Status { get; set; }
        public char Os { get; set; }
        public char Workplace { get; set; }
        public char Location { get; set; }

        [JsonIgnore]
        public AppDb Db { get; set; }

        public ComputerPost(AppDb db = null)
        {
            Db = db;
        }
        public 
    }
}
