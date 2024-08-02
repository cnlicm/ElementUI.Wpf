using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace ElementUI.Controls;

[TemplatePart(Name = PARTLABEL, Type = typeof(ContentPresenter))]
public class FormItem : System.Windows.Controls.ContentControl
{
    private const string PARTLABEL = "PART_LABEL";

    public static readonly DependencyProperty PropProperty = DependencyProperty.Register(
        nameof(Prop),
        typeof(object),
        typeof(FormItem),
        new PropertyMetadata(default(object))
    );

    public FormItem()
    {
        Loaded += OnFormItemLoaded;
    }

    private void OnFormItemLoaded(object sender, RoutedEventArgs e)
    {
    }

    /// <summary>
    /// 表单域Model字段
    /// </summary>
    public object Prop
    {
        get => GetValue(PropProperty);
        set => SetValue(PropProperty, value);
    }

    public static readonly DependencyProperty LabelProperty = DependencyProperty.Register(
        nameof(Label),
        typeof(object),
        typeof(FormItem),
        new PropertyMetadata(default(object))
    );

    /// <summary>
    /// 标签文本
    /// </summary>
    public object Label
    {
        get => (object)GetValue(LabelProperty);
        set => SetValue(LabelProperty, value);
    }

    public static readonly DependencyProperty LabelWidthProperty = DependencyProperty.Register(
        nameof(LabelWidth),
        typeof(double),
        typeof(FormItem),
        new PropertyMetadata(default(double))
    );


    

    /// <summary>
    /// 表单域标签的宽度
    /// </summary>
    public double LabelWidth
    {
        get => (double)GetValue(LabelWidthProperty);
        set => SetValue(LabelWidthProperty, value);
    }

    public static readonly DependencyProperty RequiredProperty = DependencyProperty.Register(
        nameof(Required),
        typeof(bool),
        typeof(FormItem),
        new PropertyMetadata(default(bool))
    );

    /// <summary>
    /// 是否必填
    /// </summary>
    public bool Required
    {
        get => (bool)GetValue(RequiredProperty);
        set => SetValue(RequiredProperty, value);
    }
}
