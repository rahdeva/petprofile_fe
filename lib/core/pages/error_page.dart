import 'package:flutter/material.dart';
import 'package:petprofile_fe/core/core.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key, 
    required this.onRetry
  });

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Column(
          children: [
            Assets.images.imgError.image(
              width: 200,
            ),
            Text(
              'Something went wrong...',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "An alien is probably blocking your signal.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: AppColors.grey
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: OutlinedButton(
            onPressed: onRetry,
            style: 
            OutlinedButton.styleFrom(
              side: const BorderSide(width: 2, color: AppColors.green),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
            ),
            child:Text(
              'RETRY',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.green
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
