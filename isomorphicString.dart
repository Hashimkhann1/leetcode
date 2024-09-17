

// bool isIsomorphic(String s, String t) {

//   if (s.length != t.length) return false;


//   for(int i = 0; i < s.length; i++){
    
//     s = s.replaceAll(s[i], t[i]);
    
//   }

//   return s == t;
// }


bool isIsomorphic(String s, String t) {

  if (s.length != t.length) return false;

  Map<String, String> mapST = {};
  Map<String, String> mapTS = {};



  for(int i = 0; i < s.length; i++){

    String orignal = s[i];
    String replacment = t[i];

    if(mapST.containsKey(orignal)){
      if(mapST[orignal] != replacment){
        return false;
      }
    }else{
      mapST[orignal] = replacment;
    }
    if(mapTS.containsKey(replacment)){
      if(mapTS[replacment] != orignal){
        return false;
      }
    }else{
      mapTS[replacment] = orignal;
    }
  }
  return true;
}



void main() {

print(isIsomorphic("badc", 'baba'));

}