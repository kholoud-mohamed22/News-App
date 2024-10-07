import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';


// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(            //-->> border
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image??
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.skysports.com%2F&psig=AOvVaw1fIwU3o2v68bMnlBB7g_A7&ust=1706428803962000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCMCd3_CM_YMDFQAAAAAdAAAAABAD',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,

          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
         articleModel.subTitle?? 'no description',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
