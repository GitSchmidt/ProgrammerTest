//------------------------------------------------------------------------------
// <auto-generated>
//    Dieser Code wurde aus einer Vorlage generiert.
//
//    Manuelle Änderungen an dieser Datei führen möglicherweise zu unerwartetem Verhalten Ihrer Anwendung.
//    Manuelle Änderungen an dieser Datei werden überschrieben, wenn der Code neu generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProgrammerTest
{
    using System;
    using System.Collections.Generic;
    
    public partial class Test
    {
        public Test()
        {
            this.Customer = new HashSet<Customer>();
            this.Question = new HashSet<Question>();
        }
    
        public int id { get; set; }
        public string TestName { get; set; }
    
        public virtual ICollection<Customer> Customer { get; set; }
        public virtual ICollection<Question> Question { get; set; }
    }
}
