
import 'dart:io';
String rps(String? p1, String? p2) {
  if(p1==p2)
  {
    return "Draw!";
  }

  if((p1=="Rock"&&p2=="Scissors")||(p1=="Scissors"&&p2=="Paper")||(p1=="Paper"&&p2=="Rock"))
  {
    return "Player 1 won!";
  }
  else{
    return "Player 2 won!";
  }

  
}

 
int? getCount(String inputStr) {
  int count1=0;
  int count2=0;
  for(int i=0;i<inputStr.length;i++)
  {
    if(inputStr[i]=='a'||inputStr[i]=='A'||inputStr[i]=='e'||inputStr[i]=='E'||inputStr[i]=='i'||inputStr[i]=='I'||inputStr[i]=='a'||inputStr[i]=='o'||inputStr[i]=='O'||inputStr[i]=='u'||inputStr[i]=='U')
    {
      count1=count1+1;
    }
    if(inputStr[i]==" ")
    {
      count2=count2+1;
    }
  }
  if(count2==0)
  {
    print("$count1 + \"No Spaces In The String\"");
  }
  else if(count2==1)
  {
    print("$count1 + $count2 space");
  }
  else{
    print("$count1 + $count2 spaces");
  }
}


int duplicateCount(String text) {
  text.toLowerCase();
  text.replaceAll(" ", "");
  Map<String,int> fre={};
  for (var i in text.split('')) {
    fre[i]=(fre[i]??0)+1;    
  }

  int count =0;
  fre.forEach((key, value){ 
    if(value>1)
    {
      count=count+1;
    }
    
  });

  return count;
}



