namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("C#SAM.CLIENTS")]
    public partial class CLIENTS
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CLIENT_ID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string CLIENT_LOGIN { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(50)]
        public string CLIENT_PASSWORD { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(2)]
        public string CLIENT_ROLE { get; set; }
    }
}
