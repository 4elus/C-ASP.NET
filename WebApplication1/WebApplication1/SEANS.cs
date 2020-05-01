namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("C#SAM.SEANS")]
    public partial class SEANS
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID_ROOM { get; set; }

        public DateTime? DATETIME_FILM { get; set; }

        public int? ID_FILM { get; set; }

        public virtual FILMS FILMS { get; set; }

        public virtual ROOMS ROOMS { get; set; }
    }
}
