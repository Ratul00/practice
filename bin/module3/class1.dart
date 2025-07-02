import 'dart:io';

void add(int a, int b, [String ? dis])
{
  int result;

  result = a + b;

  if(dis != null)
    {
      print("$result $dis ");

    }
  else{

    print(result);

  }



 // return result;

}

//int sum (int a, int b) => a+b;  // arrow syntax | single expression

void main()
{

  int ? a , b;

  a = int.tryParse(stdin.readLineSync()!);
  b = int.tryParse(stdin.readLineSync()!);


  //int total= add(a!,b!);
  add(a!,b!, "add kortesi");



}