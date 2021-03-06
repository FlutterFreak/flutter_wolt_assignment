import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_wolt_assignment/Data/Model/restaurants_by_location.dart';
import 'package:flutter_wolt_assignment/core/constants/strings.dart';
import 'package:flutter_wolt_assignment/domain/entity/restaurant_info.dart';

import 'fixture_reader.dart';

Map<String, dynamic> restaurantsByLocation =
    json.decode(fixture('json_data.json'));

RestaurantsByLocation restaurantsByLocationModel =
    RestaurantsByLocation.fromJson(restaurantsByLocation);

RestaurantInfo restaurantInfo = RestaurantInfo(
    id: "5ae6013cf78b5a000bb64022",
    name: "McDonald's Helsinki Kamppi",
    shortDescription: "I'm lovin' it.",
    url:
        "https://prod-wolt-venue-images-cdn.wolt.com/5ae6013cf78b5a000bb64022/bc80c9c4-9ead-11eb-9441-4efedaea1730_mcd_wolt_etusivu_1010x544.png",
    isFavorite: false);
RequestOptions requestOptions =
    RequestOptions(path: "", baseUrl: AppStrings.baseUrl);
