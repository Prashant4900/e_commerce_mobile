class Product {
  final String name;
  final String description;
  final int price;
  final int stock;
  final String category;
  final bool is_active;
  final String image;

  Product(
      {this.name,
      this.description,
      this.price,
      this.stock,
      this.category,
      this.is_active,
      this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      stock: json['stock'],
      category: json['category'],
      is_active: json['is_active'],
      image: json['image'],
    );
  }
}
