import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class HomeSkeletonWidget extends StatelessWidget {
  const HomeSkeletonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: SkeletonItem(
              child: Column(
            children: [
              SkeletonAvatar(
                style: SkeletonAvatarStyle(
                  width: double.infinity,
                  height: 150.0,
                  borderRadius: BorderRadius.circular(15.0)
                ),
              ),
              const SizedBox(height: 30.0,),
              Row(
                children: [
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        width: 180.0,
                        height: 180.0,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SkeletonParagraph(
                      style: SkeletonParagraphStyle(
                          lines: 5,
                          spacing: 7,
                          lineStyle: SkeletonLineStyle(
                            randomLength: true,
                            height: 20,
                            borderRadius: BorderRadius.circular(8),
                            minLength: MediaQuery.of(context).size.width / 6,
                            maxLength: MediaQuery.of(context).size.width / 3,
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        width: 180.0,
                        height: 180.0,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SkeletonParagraph(
                      style: SkeletonParagraphStyle(
                          lines: 5,
                          spacing: 7,
                          lineStyle: SkeletonLineStyle(
                            randomLength: true,
                            height: 20,
                            borderRadius: BorderRadius.circular(8),
                            minLength: MediaQuery.of(context).size.width / 6,
                            maxLength: MediaQuery.of(context).size.width / 3,
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        width: 180.0,
                        height: 180.0,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SkeletonParagraph(
                      style: SkeletonParagraphStyle(
                          lines: 5,
                          spacing: 7,
                          lineStyle: SkeletonLineStyle(
                            randomLength: true,
                            height: 20,
                            borderRadius: BorderRadius.circular(8),
                            minLength: MediaQuery.of(context).size.width / 6,
                            maxLength: MediaQuery.of(context).size.width / 3,
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        width: 180.0,
                        height: 180.0,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SkeletonParagraph(
                      style: SkeletonParagraphStyle(
                          lines: 5,
                          spacing: 7,
                          lineStyle: SkeletonLineStyle(
                            randomLength: true,
                            height: 20,
                            borderRadius: BorderRadius.circular(8),
                            minLength: MediaQuery.of(context).size.width / 6,
                            maxLength: MediaQuery.of(context).size.width / 3,
                          )),
                    ),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}