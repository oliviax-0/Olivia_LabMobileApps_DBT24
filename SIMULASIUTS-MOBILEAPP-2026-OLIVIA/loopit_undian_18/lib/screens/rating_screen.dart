// rating_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:loopit_undian_18/models/rating_model.dart';
import 'package:loopit_undian_18/screens/proof_of_delivery_screen.dart';
import 'package:loopit_undian_18/screens/review_success_screen.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double _rating = 0.0;
  final TextEditingController _commentController = TextEditingController();

  static const Color lightGreenTheme = Color(0xFFE7F6E2);
  static const Color darkGreenText = Color(0xFF4C6444);

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

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
          'Rating',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Card
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4E6645), width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF5ED),
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image.png'),
                        fit: BoxFit.cover,
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
                            fontWeight: FontWeight.w600,
                            color: darkGreenText,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Rp 140.000",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: darkGreenText,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: lightGreenTheme,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Deal Done",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: darkGreenText,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert, color: darkGreenText),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Rate your experience Section
            Text(
              "Rate your experience",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: darkGreenText,
              ),
            ),
            const SizedBox(height: 12),

            // User Info with Rating
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/image2.png'),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User 1",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: darkGreenText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    RatingBar.builder(
                      initialRating: _rating,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemSize: 28,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) =>
                          const Icon(Icons.star, color: Color(0xFF4E6645)),
                      onRatingUpdate: (rating) {
                        setState(() {
                          _rating = rating;
                        });
                      },
                      unratedColor: Colors.grey.shade300,
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Leave a review Section
            Text(
              "Leave a review",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: darkGreenText,
              ),
            ),
            const SizedBox(height: 8),

            // Comment TextField
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: lightGreenTheme,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: _commentController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Add a comment...",
                  hintStyle: GoogleFonts.poppins(
                    color: darkGreenText.withOpacity(0.5),
                    fontSize: 13,
                  ),
                  border: InputBorder.none,
                ),
                style: GoogleFonts.poppins(color: darkGreenText, fontSize: 13),
              ),
            ),

            const SizedBox(height: 24),

            // Order Info Section
            Text(
              "Order Info",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: darkGreenText,
              ),
            ),
            const SizedBox(height: 12),

            // Payment Method
            _buildInfoRow(
              "Payment Method",
              "BCA Virtual Account",
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bank_Central_Asia.svg/1200px-Bank_Central_Asia.svg.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.payment, size: 24),
              ),
            ),
            const SizedBox(height: 12),

            InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProofOfDeliveryScreen(
          proofImageUrl: null, // You can pass actual image URL here
        ),
      ),
    );
  },
  // Proof of Transaction
          child: _buildInfoRow(
              "",
              "Proof of transaction",
                          icon: const Icon(
                            Icons.insert_drive_file_outlined,
                            color: darkGreenText,
                            size: 24,
                          ),
                        ),
            ),
                        const SizedBox(height: 12),
            
                        // Order Number
            _buildInfoRow("Order Number", "00000001"),

            const SizedBox(height: 24),

            // Report Link
            Row(
              children: [
                const Icon(
                  Icons.warning_amber_rounded,
                  color: Color(0xFF999999),
                  size: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  "Products/Transaction trouble? ",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xFF999999),
                  ),
                ),
                Text(
                  "Report",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: darkGreenText,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Submit Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  if (_rating == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Please select a rating',
                          style: GoogleFonts.poppins(),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

                  // Create rating model and return to previous screen
                  final ratingData = new RatingModel(
                    rating: _rating,
                    comment: _commentController.text,
                    timestamp: DateTime.now(),
                  );
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThankYouScreen(),
                    ),
                  );

                  // Return rating data to Order Detail screen
                  if (mounted) {
                    Navigator.pop(context, ratingData);
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
                  "Submit",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {Widget? icon}) {
    return Row(
      children: [
        if (label.isNotEmpty)
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: GoogleFonts.poppins(fontSize: 13, color: darkGreenText),
            ),
          ),
        if (icon != null) ...[icon, const SizedBox(width: 8)],
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: darkGreenText,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
