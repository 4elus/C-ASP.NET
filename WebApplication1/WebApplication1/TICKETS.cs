namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("C#SAM.TICKETS")]
    public partial class TICKETS
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int TICKET_ID { get; set; }

        public DateTime? DATETIME { get; set; }

        public int ROOM { get; set; }

        public int VARIETY { get; set; }

        public int PLACE { get; set; }

        public int STATUS { get; set; }
    }
}
