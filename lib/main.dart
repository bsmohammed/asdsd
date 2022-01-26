import 'package:flutter/material.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;

wp.WordPress wordPress;

// adminName and adminKey is needed only for admin level APIs
wordpress=wp.WordPress(
  baseUrl: 'https://muswiq.maljezani.com',
  authenticator: wp.WordPressAuthenticator.JWT,
  adminName: 'muswiq',
  adminKey: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvbXVzd2lxLm1hbGplemFuaS5jb20iLCJpYXQiOjE2NDI4NzkyNzcsIm5iZiI6MTY0Mjg3OTI3NywiZXhwIjoxNjQzNDg0MDc3LCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.QkG_dAvwR-XIb7CtiuOcSThcbKThayDSzbjwnrJVJks',
);

Future<List<wp.Post>> posts = wordPress.fetchPosts(
  postParams: wp.ParamsPostList(
    context: wp.WordPressContext.view,
    pageNum: 1,
    perPage: 20,
    order: wp.Order.desc,
    orderBy: wp.PostOrderBy.date,
  ),
  fetchAuthor: true,
  fetchFeaturedMedia: true,
  fetchComments: true,
  postType: 'post'
);