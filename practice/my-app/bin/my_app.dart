// import 'dart:io';

// void main() {

//   print("Attendance percentage likho:");
//   int attendance = int.parse(stdin.readLineSync()!);

//   if (attendance >= 75) {
//     print("Exam me beth sakte ho");

//     print("Subject 1 marks:");
//     int m1 = int.parse(stdin.readLineSync()!);

//     print("Subject 2 marks:");
//     int m2 = int.parse(stdin.readLineSync()!);

//     print("Subject 3 marks:");
//     int m3 = int.parse(stdin.readLineSync()!);

//     print("Subject 4 marks:");
//     int m4 = int.parse(stdin.readLineSync()!);

//     int total = m1 + m2 + m3 + m4;
//     double avg = total / 4;

//     print("Average Marks: $avg");

//     if (avg >= 40) {
//       print("Pass");
//     } else {
//       print("Fail");
//     }

//   } else {
//     print("Exam me nahi beth sakte");
//   }

// }

// void main(){
//   int i = 1;  
//   for( i ;i<=5    ; i++){
//     print(i);
// }
// }

// void main(){
//   int i = 10;
//   while(i <=20){
//     print(i);
//     i++;
//   }

// }

// do while loop
//  void main(){
//    int i =1;
//    do {
//      print(5);
//     i++;
//    } while (i<= 8);
//  }


//break

void main() {

  for (int j = 1; j <= 10; j++) {

    if (j == 5) {
      break;
    }

    print(j);
  }

}