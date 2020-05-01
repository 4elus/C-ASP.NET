namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("C#SAM.ROOMS")]
    public partial class ROOMS
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ROOM_ID { get; set; }

        [StringLength(100)]
        public string NAME_ROOM { get; set; }

        public int? CNT_PLACES { get; set; }

        public int? CATEG { get; set; }

        public virtual CATEGORIES CATEGORIES { get; set; }

        public virtual SEANS SEANS { get; set; }
    }
}
