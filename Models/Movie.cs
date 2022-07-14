using System;
using System.ComponentModel.DataAnnotations;

namespace MvcMovie.Models
{
    public class Movie
    {
        public int Id { get; set; }

        [StringLength(60, MinimumLength = 3)]
        [Required]
        public string? Title { get; set; }

        [Display(Name = "Release Date"), DataType(DataType.Date)]
        public DateTime ReleaseDate { get; set; }

        [RegularExpression(@"^[A-Z]+[a-zA-Z\s]*$"),Required,StringLength(30)]
        public string? Genre { get; set; }

        [RegularExpression(@"^([1-9]|[1-9][0-9]|[1-9][0-9][0-9])+(,|.)+[0-9]*$")] //1 to 999.9
        [Range(1, 1000),DataType(DataType.Currency)]
        public float Price { get; set; }

        [RegularExpression(@"^([1-9]+(,|.)+[0-9])|-*$")] //1.0 to 9.99
        [StringLength(5)]
        public string? Rating { get; set; }

    }
}