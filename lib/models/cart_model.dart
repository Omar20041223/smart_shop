import '../helpers/app_assets.dart';

class CartModel {
  final String id;
  final String title;
  final String image;
  final String description;
  final int quantity;
  final double price;
  final bool isFeatured;
  final bool isNew;

  CartModel({
    required this.image,
    required this.description,
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
    required this.isFeatured,
    required this.isNew,
  });

  CartModel copyWith({
    String? id,
    String? title,
    int? quantity,
    double? price,
    String? image,
    String? description,
    bool? isFeatured,
    bool? isNew,
  }) {
    return CartModel(
      id: id ?? this.id,
      title: title ?? this.title,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      image: image ?? this.image,
      description: description ?? this.description,
      isFeatured: isFeatured ?? this.isFeatured,
      isNew: isNew ?? this.isNew,
    );
  }

  static List<CartModel> products = List.generate(100, (index) {
    List<String> images = [
      AppAssets.firstProduct,
      AppAssets.secondProduct,
      AppAssets.thirdProduct,
      AppAssets.fourthProduct,
      AppAssets.fifthProduct,
      AppAssets.sixthProduct,
    ];

    List<String> productNames = [
      "Wireless Headphones", "Smartphone Pro X", "4K LED TV", "Gaming Laptop",
      "Bluetooth Speaker", "Smartwatch Series 5", "Running Shoes", "Leather Jacket",
      "Backpack Travel Pro", "Wireless Mouse", "Mechanical Keyboard", "Coffee Maker",
      "Air Purifier", "Smart Light Bulb", "Portable Charger", "Stainless Steel Bottle",
      "Gaming Console", "VR Headset", "Smart Fitness Band", "Sunglasses",
      "Cotton T-Shirt", "Denim Jeans", "Formal Shoes", "Sports Watch",
      "Digital Camera", "Tripod Stand", "Microwave Oven", "Blender",
      "Office Chair", "Study Desk", "Electric Kettle", "Hair Dryer",
      "Face Cream", "Shampoo Pack", "Perfume", "Men’s Wallet",
      "Ladies Handbag", "Gold Necklace", "Diamond Ring", "Sneakers",
      "Smart Door Lock", "Security Camera", "Tablet Pro", "E-Reader",
      "Wireless Charger", "Power Bank 20,000mAh", "HD Projector", "Soundbar",
      "Baby Stroller", "Toy Car", "Board Game", "Stuffed Animal",
      "Bed Sheets Set", "Pillow Memory Foam", "Mattress King Size", "Table Lamp",
      "Wall Clock", "Car Vacuum Cleaner", "Car Phone Holder", "Portable Fan",
      "Electric Scooter", "Mountain Bike", "Helmet", "Waterproof Jacket",
      "Camping Tent", "Sleeping Bag", "Gas Stove Portable", "Hiking Boots",
      "Guitar", "Piano Keyboard", "Headset Mic", "Studio Monitor Speakers",
      "External Hard Drive", "USB Flash Drive", "SSD Drive", "Router Wi-Fi 6",
      "Printer", "Scanner", "Smart Thermostat", "Robot Vacuum",
      "Cookware Set", "Non-stick Pan", "Knife Set", "Cutting Board",
      "Rice Cooker", "Juicer", "Frying Pan", "Toaster",
      "Baby Bottle", "Diapers Pack", "Crib Bed", "Kids Shoes",
      "Novel Book Set", "Notebook", "Pen Luxury", "School Bag",
      "Watch Classic", "Watch Modern", "Bracelet", "Cap Fashion"
    ];

    List<String> productDescriptions = [
      "High-quality sound with noise cancellation.",
      "Latest smartphone with powerful processor and OLED display.",
      "Ultra HD 4K LED TV with vibrant colors.",
      "High-performance gaming laptop with RTX graphics.",
      "Portable speaker with deep bass and Bluetooth 5.0.",
      "Fitness smartwatch with heart rate monitor and GPS.",
      "Lightweight and breathable running shoes.",
      "Stylish leather jacket for all seasons.",
      "Durable travel backpack with large capacity.",
      "Ergonomic wireless mouse with fast response.",
      "RGB mechanical keyboard for gaming and work.",
      "Automatic coffee maker for fresh mornings.",
      "HEPA air purifier for clean air.",
      "Smart bulb with remote control via app.",
      "Fast charging portable power bank.",
      "Insulated stainless steel water bottle.",
      "Next-gen gaming console for immersive gameplay.",
      "Virtual reality headset with 4K display.",
      "Fitness band with calorie tracker.",
      "Trendy UV-protection sunglasses.",
      "Soft cotton T-shirt for everyday wear.",
      "Classic denim jeans with slim fit.",
      "Formal leather shoes for men.",
      "Sports watch with multiple functions.",
      "DSLR digital camera with 4K recording.",
      "Sturdy tripod stand for stable shots.",
      "Compact microwave oven with grill.",
      "Powerful blender with multiple speeds.",
      "Ergonomic office chair with lumbar support.",
      "Spacious study desk with drawers.",
      "Electric kettle with auto shut-off.",
      "High-power hair dryer with cool mode.",
      "Moisturizing face cream for daily use.",
      "Shampoo pack for smooth hair.",
      "Luxury perfume with long-lasting fragrance.",
      "Premium leather wallet for men.",
      "Trendy ladies handbag with space.",
      "Beautiful gold necklace for occasions.",
      "Elegant diamond ring for gifts.",
      "Casual sneakers with comfort design.",
      "Smart door lock with fingerprint sensor.",
      "Security camera with night vision.",
      "High-resolution tablet for entertainment.",
      "E-reader with glare-free display.",
      "Fast wireless charging pad.",
      "Massive power bank for long trips.",
      "HD projector for home theater.",
      "Soundbar with Dolby Atmos.",
      "Baby stroller with safety features.",
      "Remote-control toy car.",
      "Fun family board game.",
      "Cute stuffed teddy bear.",
      "Soft cotton bed sheets set.",
      "Comfortable memory foam pillow.",
      "Premium king-size mattress.",
      "Modern bedside table lamp.",
      "Stylish wall clock with silent movement.",
      "Handy car vacuum cleaner.",
      "Universal car phone holder.",
      "Rechargeable portable mini fan.",
      "Electric scooter with long battery.",
      "Durable mountain bike with gears.",
      "Protective helmet for riders.",
      "Waterproof outdoor jacket.",
      "Spacious camping tent for 4 people.",
      "Warm sleeping bag for outdoor camping.",
      "Portable gas stove for cooking.",
      "Durable hiking boots.",
      "Acoustic guitar with great sound.",
      "Electronic piano keyboard with 61 keys.",
      "Headset with mic for gaming.",
      "Professional studio monitor speakers.",
      "Fast external hard drive.",
      "High-capacity USB flash drive.",
      "NVMe SSD drive for speed.",
      "Latest Wi-Fi 6 router.",
      "All-in-one printer with wireless.",
      "Flatbed scanner for documents.",
      "Smart thermostat with app control.",
      "Automatic robot vacuum cleaner.",
      "Complete cookware set for kitchen.",
      "Durable non-stick frying pan.",
      "Sharp stainless steel knife set.",
      "Eco-friendly bamboo cutting board.",
      "Electric rice cooker.",
      "Juicer for fresh juices.",
      "Multipurpose frying pan.",
      "Compact toaster.",
      "Safe baby feeding bottle.",
      "Soft diapers pack for babies.",
      "Wooden crib bed.",
      "Comfortable kids shoes.",
      "Bestseller novel set.",
      "Classic ruled notebook.",
      "Luxury fountain pen.",
      "Stylish school bag.",
      "Elegant classic wristwatch.",
      "Modern smartwatch.",
      "Fashion bracelet.",
      "Trendy cap."
    ];

    return CartModel(
      id: 'product_$index',
      title: productNames[index % productNames.length],
      description: productDescriptions[index % productDescriptions.length],
      image: images[index % images.length],
      quantity: 0,
      price: 20 + index * 2.5,
      isFeatured: index % 2 == 0,
      isNew: index % 3 == 0,
    );
  });

  static List<CartModel> featuredProducts =
  products.where((product) => product.isFeatured).toList();

  static List<CartModel> newProducts =
  products.where((product) => product.isNew).toList();
}
