class UpperBodyWorkout {
  final String imagePath, name, instruction;

  UpperBodyWorkout(
      {required this.imagePath, required this.name, required this.instruction});
}

final upperBody = [
  [
    UpperBodyWorkout(
      imagePath: "assets/4050052-200.png",
      name: "Bench press",
      instruction: "3 sets - 6 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/4050052-200.png",
      name: "Dumbell press",
      instruction: "4 sets - 6 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/4050052-200.png",
      name: "Dips",
      instruction: "2 sets - 10 repitions",
    ),
  ],
  [
    UpperBodyWorkout(
      imagePath: "assets/2056787-200.png",
      name: "Pull ups",
      instruction: "2 sets - 8 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/2056787-200.png",
      name: "Deadlift",
      instruction: "2 sets - 4 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/2056787-200.png",
      name: "Lat pulldown",
      instruction: "4 sets - 6 repitions",
    ),
  ],
  [
    UpperBodyWorkout(
      imagePath: "assets/3461872-200.png",
      name: "Seated Dumbbell Overhead Press",
      instruction: "3 sets - 6 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/3461872-200.png",
      name: "Dumbbell Lateral Raise",
      instruction: "4 sets - 6 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/3461872-200.png",
      name: "Incline Dumbbell Reverse Fly",
      instruction: "2 sets - 10 repitions",
    ),
  ],
  [
    UpperBodyWorkout(
      imagePath: "assets/2572108-200.png",
      name: "Hammer Curl",
      instruction: "2 sets - 8 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/2572108-200.png",
      name: "Close Grip Bench Press",
      instruction: "2 sets - 4 repitions",
    ),
    UpperBodyWorkout(
      imagePath: "assets/2572108-200.png",
      name: "EZ Bar Skullcrushers",
      instruction: "4 sets - 6 repitions",
    ),
  ],
];
