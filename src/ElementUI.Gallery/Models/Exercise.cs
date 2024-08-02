namespace ElementUI.Gallery.Models;

public class Exercise
{
    public string? Name { get; set; }
    public string? Region { get; set; }
    public DateTime StartTime { get; set; }
    public DateTime OverTime { get; set; }
    public List<string>? Quality { get; set; }
    public bool IsOnline { get; set; }
    public string? Description { get; set; }
}