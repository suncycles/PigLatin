import java.util.*;

public void setup() 
{
  String lines[] = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}

public void draw()
{}
e
public int findFirstVowel(String sWord)
{
  for(int i=0; i<sWord.length(); i++)
  {
    if(sWord.charAt(i) == 'a' ||sWord.charAt(i) == 'e' ||
      sWord.charAt(i) == 'i' ||sWord.charAt(i) == 'o' ||
      sWord.charAt(i) == 'u' )
      return i;
  }
  return -1;
}

public String pigLatin(String sWord)
{
  if(findFirstVowel(sWord) == -1)
    return sWord+"ay";  
  if(findFirstVowel(sWord) == 0)
    return sWord+"way";
  if(sWord.substring(0,2).equals("qu"))
    return sWord.substring(2)+sWord.substring(0,2)+"ay";
  if(findFirstVowel(sWord) >= 1)
  {
    int i = findFirstVowel(sWord);
    return sWord.substring(i)+sWord.substring(0,i)+"ay";
  }
  else
    return "ERROR!";
}
