   M S B A M L   `   `   `  ����  Wifi_Network    Wifi_Network.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � AllowsTransparency .  � WindowStyle$
 None=�6O    � 
ResizeMode$ NoResize=�6x    � WindowStartupLocation$ CenterScreen=�6�   ��6b   Z�  � 	Resources 5         OnClick1��%   &	        �� 5   
   6   5       � Triggers 5	      :� 5
   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ CloseBtn��66   .[�5      �� #��[  6   5      .��5      � -   5        	 �Name$	 MainGrid��5      $��20,20,20,10q�6   
 J� SnapsToDevicePixels
 . .+�5   
   �� $
��Left=�6   $	��320��6/    �� RadiusY$ 50��6<    �� RadiusX$ 50��6I   $	��Top=�6V   $	��485��6n   $��0��6z   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ 	#FF1C365D��6#    � Offset$ 0Q�65   � 5      $ 	#FF92BFFF��6#   $ 1Q�65   5      5      �� 5   
   $
��Left=�6   $��34.796��6/   $��27.729,10,0,0q�6?   $
��Wrap=�6V   $	��Top=�6j   $��237.271��6�   
�������$��Pristina)�6�   $��24(�6�   $
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 6
  $� ��6  �� 6  $��Normal$�6  $�Mohammad Yasfo��60  6I  �� 5   
   $
��Left=�6   $��26.861��6/   $��27.729,92.072,0,0q�6?   $
��Wrap=�6Z   $	��Top=�6n   $��112.828��6�   $��16(�6�   $��NetworkName :��6�    J� RenderTransformOrigin$ 
0.33,0.854&�6�   �� 5   
   $
��Left=�6   $��26.861��6/   $��60.937,140.422,0,0q�6?   $
��Wrap=�6[   $��
Password :��6o   $	��Top=�6�   $��79.62��6�   $��16(�6�   �� 5   
   -   5         ��Name$ SSidLst��5      $
��Left=�6#   $��26.861��6>   $��151.203,92.072,0,0q�6N    �� TextWrapping$
 Wrap=�6j   $	��Top=�6~   $��268.797��6�   ���	#FF85D4B46�   �� 5   
   -   5        $ PasswordLst��5      $
��Left=�6'   $��26.861��6B   $��151.203,140.422,0,0q�6R   $
 Wrap=�6o   $	��Top=�6�   $��268.797��6�   ���	#FF90D3B76�   �� 5   
   -   5         ��Name$ StartBtn��5      $��Start Network��6#   $
��Left=�6;   $��32.233��6V   $��151.203,204.889,0,0q�6f   $	��Top=�6�   $��99.555��6�   ���	#FF96E6DC6�   �� 5   
   -   5        $ StopBtn��5      $��Stop Network��6"   $
��Left=�69   $��32.233��6T   $��320.446,204.889,0,0q�6d   $	��Top=�6�   $��99.554��6�   ���	#FF96E6DC6�   �� 5   
   -   5        $ CloseBtn��5      $�� ��6#   $
��Left=�6.   $��45��6I   $��
435,10,0,0q�6U   $	��Top=�6i   $��40��6�   ���	#FFECECEC J� OpacityMask 5       �� 5!       �� ImageSource$ close-02.png��6   5#      5$      5%      