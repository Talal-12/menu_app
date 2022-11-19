class Food {
  final String name;
  final String image;
  final String? description;

  static final List<Food> foods = [
    Food(
        name: "Pasta",
        description: "Penne",
        image:
            "https://github.com/JoinCODED/Task-Flutter-Menu-App/blob/main/assets/images/pasta.jpg?raw=true"),
    Food(
        name: "Burger",
        image:
            "https://github.com/JoinCODED/Task-Flutter-Menu-App/blob/main/assets/images/burger.jpg?raw=true"),
    Food(
        name: "Sushi",
        image:
            "https://github.com/JoinCODED/Task-Flutter-Menu-App/blob/main/assets/images/suchi.jpg?raw=true"),
    Food(
        name: "Pizza",
        description: "Pepperoni",
        image:
            "https://github.com/JoinCODED/Task-Flutter-Menu-App/blob/main/assets/images/pizza.jpg?raw=true"),
    Food(
        name: "Biryani",
        image:
            "https://github.com/JoinCODED/Task-Flutter-Menu-App/blob/main/assets/images/biryani.jpg?raw=true"),
  ];

  Food({
    required this.name,
    required this.image,
    this.description,
  });
}
