   M S B A M L   `   `   `  ����L  HElementUI.Gallery, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ElementUI.GalleryElementUI.Gallery  5
      M ISystem, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089/$clr-namespace:System;assembly=SystemSystem 5      "    ElementUI.Gallery.MainWindow   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      D @ElementUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"elhttps://element.eleme.cn/  5	      +localclr-namespace:ElementUI.Gallery  5
      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      .sys$clr-namespace:System;assembly=System  5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      $	��380��5        � Title$  
MainWindow��5      $	��420��5       � DataContext 5      +   %ElementUI.Gallery.MainWindowViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��Center=�5      $
��0,10q�5       �� Orientation$ 
Horizontal=�5      .+�5      	� &   ElementUI.Controls.LabelPosition   Left#��Z 5      $
��Left��5       d� 	IsChecked$
 TrueY�5      ��5      �� *ChangePositionCommand+5      	� 5          Right#��Z 5"      $��Right��5#      ��5!      �� *ChangePositionCommand+5#      	� 5$      
   Top#��Z 5&      $	��Top��5'      ��5%      �� *ChangePositionCommand+5'      5(        ElementUI.Controls.Form  5)   
   $��1��5*         
LabelWidth$ 80Q�5,      	   LabelPosition	 5+      �� *LabelPosition+.@�5-      !  ElementUI.Controls.FormItem  
   Label$
 活动名称��6   .��5.      �� ��6   �� *Exercise.Name+5/        50      
 51      �� 52      $��活动区域��6    .��54      ��  �� SelectedValue 6   �� *Exercise.Region+.@�55      ��	区域一��6&   ��56      	区域二��6&   57      58        59      $
 活动时间��6   .��5:      �� $ 
Horizontal=�6   .+�5;      (  "System.Windows.Controls.DatePicker     SelectedDate 6!   �� *Exercise.StartTime+  5<      $��5,0,0,0q�6!    62   �� *Exercise.OverTime+5=      5>        5?      $
 活动性质��6   .��5@      A�  A� Columns$ 2��6   .+�5A      �� $��美食/餐厅线上活动��6   $	��5,3q�63   �� 5B      $��地推活动��6   $	��5,3q�6.   �� 5C      $��线下主题活动��6   $	��5,3q�60   �� 5D      $��单纯品牌曝光��6   $	��5,3q�60   5E      5F        5G      $
 特殊资源��6   .��5H      �� $ 
Horizontal=�6   .+�5I      	� $��线上品牌商赞助��6"   	� 5J      $��线下场地免费��6"   $��5,0,0,0q�63   5K      5L        5M      $
 活动形式��6   .��5N      �� $��50��6   " �� VerticalScrollBarVisibility$
 Auto=�6-   5O      5P      �� 5R   
   $��2��5S      $��10q�5T      $��5q�5U      $��70��5V      .��6   Submit5X      5Y      5Z      