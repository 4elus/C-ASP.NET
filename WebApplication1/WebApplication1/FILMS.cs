namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("C#SAM.FILMS")]
    public partial class FILMS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FILMS()
        {
            LISTJOBS = new HashSet<LISTJOBS>();
            SEANS = new HashSet<SEANS>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int FILM_ID { get; set; }

        [Required]
        [StringLength(100)]
        public string NAME_FILM { get; set; }

        public int ID_COUNTRY { get; set; }

        public int ID_STUDIA { get; set; }

        public int ID_GENRE { get; set; }

        public int? YEAR_FILMS { get; set; }

        public int LENGTH_FILM { get; set; }

        public decimal? RATING { get; set; }

        public virtual COUNTRIES COUNTRIES { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LISTJOBS> LISTJOBS { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SEANS> SEANS { get; set; }

        public virtual GENRES GENRES { get; set; }

        public virtual STUDIES STUDIES { get; set; }
    }
}
