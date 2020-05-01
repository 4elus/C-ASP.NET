namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("C#SAM.S_STAT")]
    public partial class S_STAT
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_TICKET { get; set; }

        [StringLength(100)]
        public string OLD_STATUS { get; set; }

        [StringLength(100)]
        public string NEW_STATUS { get; set; }

        public DateTime? COL_DATE { get; set; }
    }
}
