import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/constant/app_assets.dart';
import 'package:news_app/data/data_source/remote/api_client.dart';
import 'package:news_app/presentation/screens/onboard/onboard_view_models.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constant/app_colors.dart';
import '../../../data/data_source/remote/api_endpoint_url.dart';
import '../../../data/repositories/tags_repo.dart';
import '../../common_widget/common_widget_import.dart';
import '../../router/router_imports.gr.dart';
import 'widgets/widgets_import.dart';

part 'onboard.dart';