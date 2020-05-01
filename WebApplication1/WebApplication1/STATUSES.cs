namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("C#SAM.STATUSES")]
    public partial class STATUSES
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int STATUS_ID { get; set; }

        [StringLength(100)]
        public string NAME_STATUS { get; set; }
    }
}
