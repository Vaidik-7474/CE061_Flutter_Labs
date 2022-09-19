import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;

import "dart:math";

void main(List<String> arguments) {


  //LOOPS
  //It repeats a block of code until the condition becomes false.

  /*
      //while Loop
      //syntax:
      // while(condition)
      // {
      //   //statements
      // } 
      
      // var num = 1;
      // while(num < 10)
      // {
      //   print(num);
      //   num++;
      // }
  */

  /*
      //do-while Loop
      //Here, the condition is tested at the end of the iteration.
      //do-while loops are executed atleast once.
      //syntax:
      // do{
      //   //statements
      // }while(condition)

      // var sum = 1;
      // do{
      //   sum += 3;
      //   print(sum);
      // }while(sum < 20);
  */

  /*
      //Breaking out of the loop
      //can be done using break; statement

      // var sum = 1;
      // while(true)
      // {
      //   sum += 4;
      //   if(sum > 10){
      //     break;
      //   }
      // }
  */

  /*
      //Random Interlude
      //Random numbers can be generated in dart using the dart:math library
      // var random = Random();   //Random is a class to help with random numbers
      // print(random.nextInt(78)); // nextInt is a method that generates a random integer between 0 and one less than max. value passed to it.
  */

  /*
      //for Loops
      // for(var i = 0; i<5;i++)
      // {
      //   print(i);
      // }
  */

  /*
      //continue Keyword
      //used to skip an iteration for a certain condition

      // for(var i = 0; i< 10;i++)
      // {
      //   if(i == 7)
      //   {
      //     continue;
      //   }
      //   print(i);
      // }
  */

  /*
      //for-in Loops
      //It doesnt have a counter variable, but it makes iterating over a collection more convinient.

      // const name = "Flutter is Great";
      // for(var letter in name.runes)
      // {
      //   print(String.fromCharCode(letter));
      // }

      //Here, name.runes is a collection of all code points in name
      //String.fromCharCode is used to convert the code point integer back into a string.
      //The in keyword tells the for-in loop to iterate over the collection in order , and on each iteration, to assign the current codepoint to the letter variable.Since runes is a collection of integers , letter is referred to as int. 
  */

  /*
      //for-each Loops
      //used to even further simplify the for-in loops
      //for Example:
      //syntax - 1
      // const nums = [1,2,3,4,5,6,7];
      // nums.forEach((number) => print(number));
      //syntax - 2
      // const nums = [1,2,3,4,5,6,7];
      // nums.forEach((number) {print(number);});
  */


  //MINI EXERCISES

  /*
      // 1.

      // var counter = 0;
      // while(counter < 10)
      // {
      //   print("Counter is ${counter}");
      //   counter++;
      // }
  */

  /*
      // 2.

      // for(var i = 1; i <= 10 ; i++)
      // {
      //   print(i*i);
      // }
  */

  /*
      // 3.

      // const numbers = [1,2,4,7];
      // for(var num in numbers)
      // {
      //   print(sqrt(num));
      // }
  */

  /*
      // 4.

      // const numbers = [1,2,4,7];
      // numbers.forEach((num) {print(sqrt(num));});

      // numbers.forEach((num) => print(sqrt(num)));
  */

}
