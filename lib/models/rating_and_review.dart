import 'package:flutter/material.dart';

class RatingAndReview extends StatefulWidget {
  const RatingAndReview({super.key});

  @override
  _RatingAndReviewState createState() => _RatingAndReviewState();
}

class _RatingAndReviewState extends State<RatingAndReview> {
  double _rating = 3.0;
  final TextEditingController _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Rate this animal:'),
        Slider(
          value: _rating,
          onChanged: (value) {
            setState(() {
              _rating = value;
            });
          },
          min: 1,
          max: 5,
          divisions: 4,
          label: _rating.round().toString(),
        ),
        const SizedBox(height: 16),
        const Text('Write a review:'),
        TextField(
          controller: _reviewController,
          maxLines: 4,
          decoration: const InputDecoration(
            hintText: 'Share your experience with this animal...',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Save the rating and review
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
