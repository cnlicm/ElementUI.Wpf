using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using ElementUI.Controls;
using ElementUI.Gallery.Models;

namespace ElementUI.Gallery;

public partial class MainWindowViewModel : ObservableObject
{
    [ObservableProperty]
    private LabelPosition _labelPosition = LabelPosition.Left;

    [ObservableProperty]
    private Exercise _exercise = new Exercise();
    
    [RelayCommand]
    private void ChangePosition(LabelPosition position)
    {
        LabelPosition = position;
    }
}
