namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("C#SAM.LISTWORKERS")]
    public partial class LISTWORKERS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LISTWORKERS()
        {
            LISTJOBS = new HashSet<LISTJOBS>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int WORKER_ID { get; set; }

        [StringLength(100)]
        public string WORKER_NAME { get; set; }

        [StringLength(100)]
        public string WORKER_SURNAME { get; set; }

        [StringLength(100)]
        public string WORKER_PATR { get; set; }

        public DateTime? DATE_BIRTH { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LISTJOBS> LISTJOBS { get; set; }

     
    }
}
