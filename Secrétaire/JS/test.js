
// Vérification Email
function IsAlias(str)
{
    var i,c,ls = str.length;
    str = str.toLowerCase();
    // code ascii de [a-z] => 97-122 [0-9] => 48-57 - => 45 . =>46 _ => 95
     if(ls == 0 ) 
        return false;
    for(i=0;i<ls;i++){
        c= str.charCodeAt(i);
        if(!((c==45) || (c==46) ||(c==95) || ((c>=48) && (c<=57)) || ((c>=97) && (c<=122)) ))
           return false;
    } 
    return true;      
}


function IsDomaine(str)
{
    var i,c,ls = str.length;
    str = str.toLowerCase();
    // code ascii de [a-z] => 97-122 [0-9] => 48-57 - => 45 . =>46 _ => 95
     if(ls< 2 ) 
        return false;
     if((str.indexOf('-') ==0 ) || (str.lastIndexOf('-') ==ls-1 ))   
       return false;
    for(i=0;i<ls;i++){
        c= str.charCodeAt(i);
        if(!((c==45) || ((c>=48) && (c<=57)) || ((c>=97) && (c<=122)) ))
           return false;
    } 
    return true;      
}

function IsExtension(str){
    var i,ls = str.length,c;
    str = str.toLowerCase();
    // code ascii de [a-z] => 97-122 [0-9] => 48-57 - => 45 . =>46 _ => 95
     if(ls< 2 ) 
        return false;
     if((str.indexOf('-') ==0 ) || (str.lastIndexOf('-') ==ls-1 ))   
        return false;
    for(i=0;i<ls;i++){
        c= str.charCodeAt(i);
        if ((c<97) || (c >122)) 
        return false;
    } 
    return true;      
}


function IsEmail(email)
{

}

// Vérification Date
function IsPositifInt(str)
{ 
    var i,s,ls,c;
    s =''+ str;
    ls = s.length;
    if(ls ==0)
    {
        return false;
    }
    for(i=0;i<ls;i++)
    {
        c = s.charCodeAt(i);
        if((c<48) || (c>57))
         return false;
    }
return true;
}
function IsDate(str)
{
    var TD = str.split('/'); // retourne un tableau (des chaines)
    var TM = new Array(0,31,28,31,30,31,30,31,31,30,31,30,31);
    if(TD.length !=3)
    {
      return false;
    }
    for(i=0;i<3;i++)
    {
      if(IsPositifInt(TD[i]))
            TD[i]= parseInt(TD[i]);
      else
        return false;
    }
    if(TD[2]% 4 ==0)
    {
        TM[2] =29;
    }
  
    if ((TD[1]<1) || (TD[1]>12))
    {
        return false;
    }
    if((TD[0]<1) ||(TD[0]>TM[TD[1]]))
    {
        return false;
    } 
return true;
}
 
function AllTrim(str)
{
     str = str.trim();
    while(str.includes("  ")) 
    {
        str = str.replaceAll('  ',' ');
    }
    return str;
}

function ChangeBackColor(obj, color)
{
    obj.style.backgroundColor = color;
}