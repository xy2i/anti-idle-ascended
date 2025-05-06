//! status=pending
loadCode = "0";
i = 1;
while(i <= 66)
{
   loadCode += "," + _root.save.arenaSkill[i];
   i++;
}
buildText.text = loadCode;
