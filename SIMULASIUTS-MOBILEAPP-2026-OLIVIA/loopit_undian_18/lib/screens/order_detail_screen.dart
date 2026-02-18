// order_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rating_screen.dart';
import 'package:loopit_undian_18/models/rating_model.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  RatingModel? _userRating;

  static const Color lightGreenTheme = Color(0xFFE7F6E2);
  static const Color darkGreenText = Color(0xFF4C6444);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: const Color(0xFFF5F5F5),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 20),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        title: Text(
          'Order Detail',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            // Delivery Information Header
            _sectionHeader(
              "Delivery information",
              color: const Color(0xFF4E6645),
              fontSize: 16,
            ),
            const Text(
              "Standard shipping: 1Z3X8Y9A0456781234",
              style: TextStyle(
                color: Color(0xFF4E6645),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: lightGreenTheme,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.local_shipping_outlined,
                    color: darkGreenText,
                    size: 25,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          color: darkGreenText,
                          fontSize: 14,
                          height: 1.4,
                        ),
                        children: const [
                          TextSpan(
                            text:
                                "Your order has arrived at the transit location in ",
                          ),
                          TextSpan(
                            text: "Kab. Tangerang, Pagedangan, Pagedangan Hub.",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),
            // Address Section
            _sectionHeader("Delivery Address"),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 18,
                  color: Color(0xFF4E6645),
                ),
                const SizedBox(width: 12),
                Text(
                  "Home sweet home",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF4E6645),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 21, top: 4),
              child: Text(
                "Edu Town Kavling Edu I No. 1, Jalan BSD Raya Utama, BSD City, Serpong, Tangerang Selatan, Banten 15345, Indonesia",
                style: TextStyle(
                  color: Color(0xFF4E6645),
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(thickness: 1, color: Color(0xFFEEEEEE)),
            ),

            // Item Detail Section
            _sectionHeader("Item Detail"),
            const Text(
              "Invoice number: INV-20240223-8745",
              style: TextStyle(
                color: Color(0xFF4E6645),
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 1.0),
                  child: Container(
                    width: 120,
                    height: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF5ED),
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jacket Cream color Brand ABC",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF4E6645),
                        ),
                      ),
                      const Text(
                        "Rp 140.000",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF4E6645),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(
                              'assets/images/image2.png',
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "User 1",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xFF4E6645),
                                  ),
                                ),
                                // Display rating stars
                                Row(
                                  children: _userRating != null
                                      ? _buildRatingStars(_userRating!.rating)
                                      : List.generate(
                                          4,
                                          (index) => const Icon(
                                            Icons.star,
                                            size: 14,
                                            color: Color(0xFF4E6645),
                                          ),
                                        )
                                        ..add(
                                          const Icon(
                                            Icons.star_border,
                                            size: 14,
                                            color: Color(0xFF4E6645),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Display user comment if exists
                      if (_userRating != null &&
                          _userRating!.comment.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: lightGreenTheme,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            _userRating!.comment,
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: darkGreenText,
                              height: 1.3,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: lightGreenTheme,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.chat_bubble_outline,
                    color: Color(0xFF4E6645),
                    size: 20,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(thickness: 1, color: Color(0xFFEEEEEE)),
            ),
            // Payment Method Section
            _sectionHeader("Payment Method"),
            Row(
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bank_Central_Asia.svg/1200px-Bank_Central_Asia.svg.png',
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.payment),
                ),
                const SizedBox(width: 12),
                Text(
                  "BCA Virtual Account",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4E6645)),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Order Total Section
            _sectionHeader("Order Total"),
            _priceRow("Items Total", "Rp 140.000"),
            _priceRow("Shipping Cost", "Rp 45.000"),
            _priceRow("Service Fee", "Rp 2.000"),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Total Cost",
                    style: TextStyle(color: Color(0xFF4E6645))),
                Text(
                  "Rp 187.000",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color(0xFF4E6645),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Bottom Review Button
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    // Navigate to Rating Screen and wait for result
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RatingScreen(),
                      ),
                    );

                    // Update state if rating was submitted
                    if (result != null && result is RatingModel) {
                      setState(() {
                        _userRating = result;
                      });

                      // Show success message
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Thank you for your review!',
                              style: GoogleFonts.poppins(),
                            ),
                            backgroundColor: darkGreenText,
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightGreenTheme,
                    foregroundColor: darkGreenText,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    _userRating == null ? "Leave a Review" : "Edit Review",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildRatingStars(double rating) {
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      stars.add(
        Icon(
          i <= rating ? Icons.star : Icons.star_border,
          size: 14,
          color: const Color(0xFF4E6645),
        ),
      );
    }
    return stars;
  }

  Widget _sectionHeader(String title, {Color? color, double? fontSize}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 15,
          color: color,
        ),
      ),
    );
  }

  Widget _priceRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(color: Color(0xFF4E6645), fontSize: 13)),
          Text(
            value,
            style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xFF4E6645),
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}