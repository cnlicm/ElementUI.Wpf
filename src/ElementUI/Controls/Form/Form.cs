using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace ElementUI.Controls;

public class Form : ItemsControl
{
    static Form()
    {
        DefaultStyleKeyProperty.OverrideMetadata(
            typeof(Form),
            new FrameworkPropertyMetadata(typeof(Form))
        );
    }

    public Form()
    {
        Loaded += OnFormLoaded;
    }

    private void OnFormLoaded(object sender, RoutedEventArgs e)
    {
        UpdateItemSpacing();
        UpdateLabelWidth();
    }

    protected override DependencyObject GetContainerForItemOverride()
    {
        return new FormItem();
    }

    public static readonly DependencyProperty LabelWidthProperty = DependencyProperty.Register(
        nameof(LabelWidth),
        typeof(double),
        typeof(Form),
        new PropertyMetadata(default(double), OnLabelWidthChanged)
    );

    private static void OnLabelWidthChanged(
        DependencyObject d,
        DependencyPropertyChangedEventArgs e
    )
    {
        if (d is Form form && form.IsLoaded)
        {
            form.UpdateLabelWidth();
        }
    }

    /// <summary>
    /// 更新表单项间距
    /// </summary>
    private void UpdateLabelWidth()
    {
        var formItems = GetLogicalFormItems().ToArray();
        foreach (var item in formItems)
        {
            item.LabelWidth = LabelWidth;
        }
    }

    /// <summary>
    /// 表单域标签的宽度
    /// </summary>
    public double LabelWidth
    {
        get => (double)GetValue(LabelWidthProperty);
        set => SetValue(LabelWidthProperty, value);
    }

    public static readonly DependencyProperty LabelPositionProperty = DependencyProperty.Register(
        nameof(LabelPosition),
        typeof(LabelPosition),
        typeof(Form),
        new PropertyMetadata(LabelPosition.Right)
    );

    /// <summary>
    /// 表单域标签的位置
    /// </summary>
    public LabelPosition LabelPosition
    {
        get => (LabelPosition)GetValue(LabelPositionProperty);
        set => SetValue(LabelPositionProperty, value);
    }

    public static readonly DependencyProperty ItemSpacingProperty = DependencyProperty.Register(
        nameof(ItemSpacing),
        typeof(double),
        typeof(Form),
        new PropertyMetadata(10.0, OnItemSpacingChanged)
    );

    /// <summary>
    /// 表单项之间的间隙
    /// </summary>
    public double ItemSpacing
    {
        get => (double)GetValue(ItemSpacingProperty);
        set => SetValue(ItemSpacingProperty, value);
    }

    private static void OnItemSpacingChanged(
        DependencyObject d,
        DependencyPropertyChangedEventArgs e
    )
    {
        if (d is Form form && form.IsLoaded)
        {
            form.UpdateItemSpacing();
        }
    }

    /// <summary>
    /// 更新表单项间距
    /// </summary>
    private void UpdateItemSpacing()
    {
        var formItems = GetLogicalFormItems().ToArray();
        for (int i = 1; i < formItems.Length; i++)
        {
            formItems[i].Margin = new Thickness(0, ItemSpacing, 0, 0);
        }
    }

    public IEnumerable<FormItem> GetLogicalFormItems()
    {
        var formItems = new List<FormItem>();
        GetLogicalChildren(this, formItems);
        return formItems;
    }

    private void GetLogicalChildren(DependencyObject? parent, IList<FormItem> formItems)
    {
        if (parent == null)
            return;

        foreach (var child in LogicalTreeHelper.GetChildren(parent))
        {
            if (child is DependencyObject dependencyChild)
            {
                if (dependencyChild is FormItem formItem)
                {
                    formItems.Add(formItem);
                }

                GetLogicalChildren(dependencyChild, formItems);
            }
        }
    }
}