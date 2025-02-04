import 'package:json_annotation/json_annotation.dart';

part 'theme_colors_model.g.dart';

@JsonSerializable()
class ThemeColors {
  final String bg_clr;
  final String service_id;
  final String txt_title_clr;
  final String txt_clr;
  final String prd_clr;
  final String cat_clr;

  ThemeColors({
    required this.bg_clr,
    required this.service_id,
    required this.txt_title_clr,
    required this.txt_clr,
    required this.prd_clr,
    required this.cat_clr,
  });

  factory ThemeColors.fromJson(Map<String, dynamic> json) {
    return ThemeColors(
      bg_clr: json['bg_clr'],
        service_id: json['service_id'],
        txt_title_clr: json['txt_title_clr'],
        txt_clr: json['txt_clr'],
        prd_clr: json['prd_clr'],
        cat_clr: json['cat_clr'],
    );
  }

  Map<String, dynamic> toJson() => _$ThemeColorsToJson(this);
}