class MonsterHuntAssistTabWindow expands UWindowDialogClientWindow;

var UMenuPageControl Pages;

function Created()
{
   //local UWindowPageControlPage PageControl;
   WinLeft = (Root.WinWidth - WinWidth) / 2;
   WinTop = (Root.WinHeight - WinHeight) / 2;

   Super.Created();
}

defaultproperties
{
}
