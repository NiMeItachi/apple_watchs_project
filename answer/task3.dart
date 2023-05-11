
///Asosiy class
class MyWords {
  final List<String> _words = ["flex", "flower"];
  
  MyWords();

  factory MyWords.a(String value){
    if(value.length >= 2){
      return MyWords().._words.add(value);
    } else {
      return throw CustomException.notEnoughLength();
    }
  }

  get wordsList => _words;
  
  void addNewWord(String value){
    _words.add(value);
  }
  
  String longestCommonPrefix(){
    String result = '';
    if(_words.length > 2){
      String prefix = _words[0];
      for(int i = 1; i < _words.length; i++){
        for(int n = 0; n < _words[i].length; n++){
          if(_words[i][n] == prefix[n]){
            result += _words[i][n];
          } else{
            return result;
          }
        }
      }
    }
    return result;
  }

  @override
  String toString() {
    return 'MyWords{_words: $_words}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyWords &&
          runtimeType == other.runtimeType &&
          _words == other._words;

  @override
  int get hashCode => _words.hashCode;


  @override
  dynamic noSuchMethod(Invocation invocation) {
    return "No such method";
  }

  MyWords copyWith () => MyWords();
}

///Custom exception
class CustomException extends FormatException{
  static notEnoughLength() => "Not enough characters in word!";
}







void main() {
  //Exception
  // MyWords.a("a");

   MyWords myWords = MyWords.a("flower");
   myWords.addNewWord("flow");

   String result = myWords.longestCommonPrefix();
   print(result);
   print(myWords.wordsList);
}