   M S B A M L   `   `   `  ????J  FDndRollTableApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DndRollTableAppDndRollTableApp  5   	        DndRollTableApp.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:DndRollTableApp     5   	     ? Title$  
MainWindow??5   	   $	??450??6   $	??800??6)   .??5	      ? .+?5
   
   ?? $	??Top=?6   $
??Left=?6,   $	??100??6G   $	??100??6T   $??119,283,0,0q?6z   ??6`   ?? *
HitCount+6?   ?? 5   
   -   5        $??Load SpreadSheet??5      $	??100??6d   $	??100??6q   $
??Left=?6}   $??613,24,0,310q?6?   ??6D   ?? *ButtonPress+6?   ?? 5   
   -   5        $??Roll them dice??5      $	??100??6`   $	??100??6m   $
??Left=?6y   $??344,241,0,93q?6?   ??6@   ?? *ButtonPress+6?   ?? 5   
   -   5        $
??text??5      $
??Left=?6   $??
452,24,0,0q?69    ?? TextWrapping$
 Wrap=?6M   $	??Top=?6{   $	??120??6?   $??10q?6?   ??6a   ?? *
FilePath+6?   ?? 5   
   -   5        $??outcome??5      $
??Left=?6!   $??224,346,0,0q?6<   $
 Wrap=?6Q   $	??Top=?6~   $	??267??6?   $??10q?6?   ??6e   ?? *	Outcome+6?   ?? 5   
   -   5         ??Name$ 	selection??5      $??Center=?6I   $??	0,208,0,0q?6f   $	??Top=?6y   $	??120??6?   ??6&   ?? *
TypeOfRoll+6?   ?? 5   
   $$??File path of your Spreadsheet:??6   $
??Left=?69   $??
276,29,0,0q?6T   $	??Top=?6h   ?? 5   
   $??Outcome of the Roll:??6   $
??Left=?6/   $??
94,351,0,0q?6J   $	??Top=?6^   ?? 5   
   $+??%What Table would you like to roll on???6   $
??Left=?6@   $??129,208,0,0q?6[   $	??Top=?6p   5      5      