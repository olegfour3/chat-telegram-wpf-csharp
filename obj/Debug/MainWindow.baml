   M S B A M L   `   `   `  ����I  ETelegramBotOne, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:TelegramBotOneTelegramBotOne  5   	       TelegramBotOne.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:TelegramBotOne     5   	     � Title$  BotOne��5   	   $	��450��6   $	��800��6%    � Icon$ B111111.png��61    � ShowInTaskbar .  .��5	      �  � RowDefinitions 5
   
   �� 5      $��5 �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $	��130 �6   �� 5      $��5 �6    � ColumnDefinitions 5   
   �� 5      $��5 �6   �� 5      $	��20* �6   �� 5      $	��80* �6   �� 5      $��5 �6   .+�5   
   �� 
���   �$��5q�5       �� CornerRadius$ 5��5       �� Padding$ 5q�5      $��1q�5      $��1��5      $��3��5      $��1��5      ._�5"      �� -   5         ��Name$ 	usersList��5"      $��Stretch=�5#      $��Stretch=�5$      ��5%      �� 5&      .R�5'      �� $��20(�6$   ��62   �� *Nick+5(      5*      5+      �� 5-   
   
���   �$��5q�5.      $ 5��5/      $ 5q�50      $��1q�51      $��1��52      $��2��53      $��2��54      ._�57      �� -   5        $ concreteUserChat��57      $��Stretch=�58      $��Stretch=�59      $��20(�5;      ��5:      ��  �� ElementName$ 	usersList��	 �� Path$	 SelectedItem.Messages���5<      �� 5=      .R�5>      �� ���	#FF2B5278$��5q�5?   !   $ 5��5@   !   $
 15,5q�5A   !   ._�5B      �� $��20(�69   
���������6(   �� 6G   5C      5D      5F      5G      �� 5I   
   
�������$��5q�5J   !   $ 5��5K   !   $ 5q�5L   !   $��1q�5M   !   $��3��5N   !   $��2��5O   !   ._�5P      �� .+�5Q      �� -   5        
 ��Name$
 txtBxSendMsg��5R   *   $��60��5Q      $��20(�5S   *    �� TextWrapping$
 Wrap=�5T   *    �� AutoWordSelection . $��5q�5V   *   $��Bottom=�5W   *   �� 5X      -   5         ��Name$ 
btnSendMsg��5Z      $��ОТПРАВИТЬ��5X      $��5q�5Y      $��20(�5[      
�������5\      5]      5^      5`      5a      