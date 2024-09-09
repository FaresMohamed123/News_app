import 'package:flutter/material.dart';
import 'package:new_app/model/article_model.dart';
import 'package:new_app/widgets/onpressedurl.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              OnPressedUrl (articleModel.url!);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: FadeInImage(
                        placeholder: const AssetImage('assets/busnuss22.webp'),
                        image: NetworkImage(articleModel.image ??
                            'https://i.stack.imgur.com/l60Hf.png'),
                        fit: BoxFit.fill,
                      ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            articleModel.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12),
          Text(
            articleModel.subtitle ?? 'NO DESCRIPTION',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              color: Colors.green,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
