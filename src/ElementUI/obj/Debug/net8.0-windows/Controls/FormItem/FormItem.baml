   M S B A M L   `   `   `  ����D  @ElementUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ElementUI.ControlsElementUI.Controls  5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35_ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aR NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType!    ElementUI.Controls.FormItem   LeftTemplate � ColumnDefinitions ��Name    Label �� TextAlignment*  $Microsoft.Xaml.Behaviors.Interaction   Triggers/  )Microsoft.Xaml.Behaviors.Core.DataTrigger   
Comparison   Value:  4Microsoft.Xaml.Behaviors.Core.PropertyChangedTrigger   Binding	 �� RelativeSource*  $Microsoft.Xaml.Behaviors.TriggerBase
   Actions8  2Microsoft.Xaml.Behaviors.Core.ChangePropertyAction   PropertyName   Value  RightTemplate  TopTemplate � RowDefinitions �� 
TargetType �� Property �� Value �� Triggers&    ElementUI.Controls.LabelPosition   Left �� Value �� Binding �� AncestorType   ElementUI.Controls.Form   Right
   Top�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     3b+http://schemas.microsoft.com/xaml/behaviors  5      -controls clr-namespace:ElementUI.Controls  5      :x,http://schemas.microsoft.com/winfx/2006/xaml     5      %�  &	        &	 8    &	 q    '   �    7   7  7  �� 5      "    6   .R�5   
   �  5	      �� 5
      $
��Auto �6#   �� 5      $��* �6#   .+�5      �� $ 
PART_LABEL��5      #��z 5      $��0��5      $��0,0,10,0q�5      $
 Left=�5      #��z��5       5        5      $ NotEqual=�5      $ 0��5       5      �� *
LabelWidth+	 �� *TemplatedParent+.
 5        $ Width��61    6F   �� *
LabelWidth+	 �� *TemplatedParent+5      5      �� 5      #��z��5      $��1��5      #��z��5       5!      5"      �� 5$      "    6   .R�5%   
   �  5&      �� 5'      $
��Auto �6#   �� 5(      $��* �6#   .+�5*      �� $ 
PART_LABEL��50      #��z 5+      $��0��5,      $��0,0,10,0q�5-      $ Right=�5.      #��z��5/       51        52      $ NotEqual=�54      $ 0��55       53      �� *
LabelWidth+	 �� *TemplatedParent+.
 56        $ Width��61    6F   �� *
LabelWidth+	 �� *TemplatedParent+57      59      �� 5:      #��z��5;      $��1��5<      #��z��5=      5>      5?      �� 5A      "    6   .R�5B   
   �  5C      �� 5D      $
��Auto �6    �� 5E      $
��Auto �6    .+�5G      �� #��z 5H      $��0��5I      $��0,0,0,10q�5J      $
 Left=�5K      #��z��5L      �� 5M      #��z��5N      $��1��5O      #��z��5P      5Q      5R      �� 5T      "   6   .�5U   
   ��  � ��$ Center=�65    5V   
   �� 5W      # Z 6�    6   �� *LabelPosition+	 �� *FindAncestor+"  .a�5X      ��  � ��8   6-   5Y      �� 5Z      # Z 6�    6   �� *LabelPosition+	 �� *FindAncestor+"  .a�5[      ��  � ��8  6-   5\      �� 5]      # Z 6�    6   �� *LabelPosition+	 �� *FindAncestor+"  .a�5^      ��  � ��8  6-   5_      5a      5b      