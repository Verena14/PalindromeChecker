public void setup()
{
  //String lines[] = loadStrings("palindromes.txt");
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  println("there are " + lines.length + " lines");
  for(int i = 0; i < lines.length; i++)
  {
    if(palindrome(lines[i]) == true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  //your code here
  //String reverse = reverse(word);
//  StringObj front = new StringObj();
//  StringObj back = new StringObj();
  String front = new String();
  String back = new String();
  char tA;
  char tB;
  for(int i = 0; i < word.length(); i++)
  {
    tA = word.charAt(i);
    tB = reverse(word).charAt(i);
//    fixString(tA, front);
//    fixString(tB, back);
    if(Character.isLetter(tA))
    {
      if(Character.isUpperCase(tA))
        tA = Character.toLowerCase(tA);
      front += tA;
    }
    if(Character.isLetter(tB))
    {
      if(Character.isUpperCase(tB))
        tB = Character.toLowerCase(tB);
      back += tB;
    }
  }
  if(back.equals(front))
    return true;
  return false;
}
//public void fixString(char t, StringObj temp)
//{
//  System.out.println(temp);
//  if(Character.isLetter(t))
//  {
//    if(Character.isUpperCase(t))
//      t = Character.toLowerCase(t);
//    temp.setN = temp.getN + t;
//  }
//}
//
//
//public class StringObj
//{
//  String myN;
//  StringObj()
//  {
//    myN = "";
//  }
//  public void setN(String n)
//  {
//    myN = n;
//  }
//  public String getN()
//  {
//    return myN;
//  }
//}
//
public String reverse(String str)
{
  String sNew = new String();
  //your code here
  for(int i = str.length()-1; i >= 0; i--)
  {
    sNew += str.charAt(i);
  }
  return sNew;
}
