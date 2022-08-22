// // import 'dart:convert';

// // List<Recipe> recipeFromJson(String str) => Recipe.fromJson(json.decode(str));
// // String recipeToJson(Recipe data) => json.encode(data.toJson());
// // List<Recipe> recipeFromJson(String str) =>
// //     List<Recipe>.from(json.decode(str).map((x) => Recipe.fromJson(x))).toList();

// class Recipe {
//   late int count;
//   late List<Results> results;

//   Recipe({required this.count, required this.results});

//   factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
//         count: json["count"],
//         results:
//             List<Results>.from(json["results"].map((x) => Results.fromJson(x)))
//                 .toList(),
//       );

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['count'] = count;
//     if (results != null) {
//       data['results'] = results.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Results {
//   String? thumbnailAltText;
//   int? updatedAt;
//   String? language;
//   String? slug;
//   String? servingsNounSingular;
//   int? prepTimeMinutes;
//   int? numServings;
//   dynamic inspiredByUrl;
//   String? yields;
//   int? cookTimeMinutes;
//   List<Instructions>? instructions;
//   UserRatings? userRatings;
//   bool? isShoppable;
//   String? canonicalId;
//   int? videoId;
//   Nutrition? nutrition;
//   List<dynamic>? compilations;
//   String? draftStatus;
//   int? totalTimeMinutes;
//   String? videoUrl;
//   dynamic brand;
//   List<Sections>? sections;
//   List<Credits>? credits;
//   List<Renditions>? renditions;
//   String? keywords;
//   List<dynamic>? facebookPosts;
//   int? showId;
//   Show? show;
//   String? servingsNounPlural;
//   TotalTimeTier? totalTimeTier;
//   String? country;
//   int? id;
//   dynamic buzzId;
//   int? createdAt;
//   int? approvedAt;
//   bool? isOneTop;
//   dynamic videoAdContent;
//   dynamic originalVideoUrl;
//   String? nutritionVisibility;
//   dynamic brandId;
//   String? seoTitle;
//   dynamic beautyUrl;
//   List<Topics>? topics;
//   List<Tags>? tags;
//   String? name;
//   bool? tipsAndRatingsEnabled;
//   String? aspectRatio;
//   String? description;
//   String? thumbnailUrl;
//   String? promotion;
//   List<Recipes>? recipes;

//   Results(
//       {required this.thumbnailAltText,
//       required this.updatedAt,
//       required this.language,
//       required this.slug,
//       required this.servingsNounSingular,
//       required this.prepTimeMinutes,
//       required this.numServings,
//       required this.inspiredByUrl,
//       required this.yields,
//       required this.cookTimeMinutes,
//       required this.instructions,
//       required this.userRatings,
//       required this.isShoppable,
//       required this.canonicalId,
//       required this.videoId,
//       required this.nutrition,
//       required this.compilations,
//       required this.draftStatus,
//       required this.totalTimeMinutes,
//       required this.videoUrl,
//       required this.brand,
//       required this.sections,
//       required this.credits,
//       this.renditions,
//       this.keywords,
//       required this.facebookPosts,
//       required this.showId,
//       required this.show,
//       required this.servingsNounPlural,
//       required this.totalTimeTier,
//       required this.country,
//       required this.id,
//       this.buzzId,
//       required this.createdAt,
//       required this.approvedAt,
//       required this.isOneTop,
//       required this.videoAdContent,
//       this.originalVideoUrl,
//       required this.nutritionVisibility,
//       this.brandId,
//       required this.seoTitle,
//       this.beautyUrl,
//       required this.topics,
//       required this.tags,
//       required this.name,
//       required this.tipsAndRatingsEnabled,
//       required this.aspectRatio,
//       required this.description,
//       required this.thumbnailUrl,
//       required this.promotion,
//       required this.recipes});

//   Results.fromJson(Map<String, dynamic> json) {
//     thumbnailAltText = json['thumbnail_alt_text'];
//     updatedAt = json['updated_at'];
//     language = json['language'];
//     slug = json['slug'];
//     servingsNounSingular = json['servings_noun_singular'];
//     prepTimeMinutes = json['prep_time_minutes'];
//     numServings = json['num_servings'];
//     inspiredByUrl = json['inspired_by_url'];
//     yields = json['yields'];
//     cookTimeMinutes = json['cook_time_minutes'];
//     if (json['instructions'] != null) {
//       instructions = <Instructions>[];
//       json['instructions'].forEach((v) {
//         instructions?.add(Instructions.fromJson(v));
//       });
//     }
//     userRatings = (json['user_ratings'] != null
//         ? UserRatings.fromJson(json['user_ratings'])
//         : null)!;
//     isShoppable = json['is_shoppable'];
//     canonicalId = json['canonical_id'];
//     videoId = json['video_id'];
//     nutrition = json['nutrition'] != null
//         ? Nutrition.fromJson(json['nutrition'])
//         : null;
//     if (json['compilations'] != null) {
//       compilations = <dynamic>[];
//       json['compilations'].forEach((v) {
//         compilations?.add(compilations);
//       });
//     }
//     draftStatus = json['draft_status'];
//     totalTimeMinutes = json['total_time_minutes'];
//     videoUrl = json['video_url'];
//     brand = json['brand'];
//     if (json['sections'] != null) {
//       sections = <Sections>[];
//       json['sections'].forEach((v) {
//         sections?.add(Sections.fromJson(v));
//       });
//     }
//     if (json['credits'] != null) {
//       credits = <Credits>[];
//       json['credits'].forEach((v) {
//         credits?.add(Credits.fromJson(v));
//       });
//     }
//     if (json['renditions'] != null) {
//       renditions = <Renditions>[];
//       json['renditions'].forEach((v) {
//         renditions?.add(Renditions.fromJson(v));
//       });
//     }
//     keywords = json['keywords'];
//     if (json['facebook_posts'] != null) {
//       facebookPosts = <dynamic>[];
//       json['facebook_posts'].forEach((v) {
//         facebookPosts?.add(facebookPosts);
//       });
//     }
//     showId = json['show_id'];
//     show = json['show'] != null ? Show.fromJson(json['show']) : null;
//     servingsNounPlural = json['servings_noun_plural'];
//     totalTimeTier = json['total_time_tier'] != null
//         ? TotalTimeTier.fromJson(json['total_time_tier'])
//         : null;
//     country = json['country'];
//     id = json['id'];
//     buzzId = json['buzz_id'];
//     createdAt = json['created_at'];
//     approvedAt = json['approved_at'];
//     isOneTop = json['is_one_top'];
//     videoAdContent = json['video_ad_content'];
//     originalVideoUrl = json['original_video_url'];
//     nutritionVisibility = json['nutrition_visibility'];
//     brandId = json['brand_id'];
//     seoTitle = json['seo_title'];
//     beautyUrl = json['beauty_url'];
//     if (json['topics'] != null) {
//       topics = <Topics>[];
//       json['topics'].forEach((v) {
//         topics?.add(Topics.fromJson(v));
//       });
//     }
//     if (json['tags'] != null) {
//       tags = <Tags>[];
//       json['tags'].forEach((v) {
//         tags?.add(Tags.fromJson(v));
//       });
//     }
//     name = json['name'];
//     tipsAndRatingsEnabled = json['tips_and_ratings_enabled'];
//     aspectRatio = json['aspect_ratio'];
//     description = json['description'];
//     thumbnailUrl = json['thumbnail_url'];
//     promotion = json['promotion'];
//     if (json['recipes'] != null) {
//       recipes = <Recipes>[];
//       json['recipes'].forEach((v) {
//         recipes?.add(new Recipes.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['thumbnail_alt_text'] = thumbnailAltText;
//     data['updated_at'] = updatedAt;
//     data['language'] = language;
//     data['slug'] = slug;
//     data['servings_noun_singular'] = servingsNounSingular;
//     data['prep_time_minutes'] = prepTimeMinutes;
//     data['num_servings'] = numServings;
//     data['inspired_by_url'] = inspiredByUrl;
//     data['yields'] = yields;
//     data['cook_time_minutes'] = cookTimeMinutes;
//     if (instructions != null) {
//       data['instructions'] = instructions?.map((v) => v.toJson()).toList();
//     }
//     if (userRatings != null) {
//       data['user_ratings'] = userRatings?.toJson();
//     }
//     data['is_shoppable'] = isShoppable;
//     data['canonical_id'] = canonicalId;
//     data['video_id'] = videoId;
//     if (nutrition != null) {
//       data['nutrition'] = nutrition?.toJson();
//     }
//     if (compilations != null) {
//       data['compilations'] = compilations?.map((v) => v.toJson()).toList();
//     }
//     data['draft_status'] = draftStatus;
//     data['total_time_minutes'] = totalTimeMinutes;
//     data['video_url'] = videoUrl;
//     data['brand'] = brand;
//     if (sections != null) {
//       data['sections'] = sections?.map((v) => v.toJson()).toList();
//     }
//     if (credits != null) {
//       data['credits'] = credits?.map((v) => v.toJson()).toList();
//     }
//     if (renditions != null) {
//       data['renditions'] = renditions?.map((v) => v.toJson()).toList();
//     }
//     data['keywords'] = keywords;
//     if (facebookPosts != null) {
//       data['facebook_posts'] = facebookPosts?.map((v) => v.toJson()).toList();
//     }
//     data['show_id'] = showId;
//     if (show != null) {
//       data['show'] = show?.toJson();
//     }
//     data['servings_noun_plural'] = servingsNounPlural;
//     if (totalTimeTier != null) {
//       data['total_time_tier'] = totalTimeTier?.toJson();
//     }
//     data['country'] = country;
//     data['id'] = id;
//     data['buzz_id'] = buzzId;
//     data['created_at'] = createdAt;
//     data['approved_at'] = approvedAt;
//     data['is_one_top'] = isOneTop;
//     data['video_ad_content'] = videoAdContent;
//     data['original_video_url'] = originalVideoUrl;
//     data['nutrition_visibility'] = nutritionVisibility;
//     data['brand_id'] = brandId;
//     data['seo_title'] = seoTitle;
//     data['beauty_url'] = beautyUrl;
//     if (topics != null) {
//       data['topics'] = topics?.map((v) => v.toJson()).toList();
//     }
//     if (tags != null) {
//       data['tags'] = tags?.map((v) => v.toJson()).toList();
//     }
//     data['name'] = name;
//     data['tips_and_ratings_enabled'] = tipsAndRatingsEnabled;
//     data['aspect_ratio'] = aspectRatio;
//     data['description'] = description;
//     data['thumbnail_url'] = thumbnailUrl;
//     data['promotion'] = promotion;
//     if (recipes != null) {
//       data['recipes'] = recipes?.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Instructions {
//   late String displayText;
//   late int startTime;
//   late String appliance;
//   late int endTime;
//   late int temperature;
//   late int id;
//   late int position;

//   Instructions(
//       {required this.displayText,
//       required this.startTime,
//       required this.appliance,
//       required this.endTime,
//       required this.temperature,
//       required this.id,
//       required this.position});

//   Instructions.fromJson(Map<String, dynamic> json) {
//     displayText = json['display_text'];
//     startTime = json['start_time'];
//     appliance = json['appliance'];
//     endTime = json['end_time'];
//     temperature = json['temperature'];
//     id = json['id'];
//     position = json['position'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['display_text'] = displayText;
//     data['start_time'] = startTime;
//     data['appliance'] = appliance;
//     data['end_time'] = endTime;
//     data['temperature'] = temperature;
//     data['id'] = id;
//     data['position'] = position;
//     return data;
//   }
// }

// class UserRatings {
//   late int countPositive;
//   late double score;
//   late int countNegative;

//   UserRatings(
//       {required this.countPositive,
//       required this.score,
//       required this.countNegative});

//   UserRatings.fromJson(Map<String, dynamic> json) {
//     countPositive = json['count_positive'];
//     score = json['score'];
//     countNegative = json['count_negative'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['count_positive'] = countPositive;
//     data['score'] = score;
//     data['count_negative'] = countNegative;
//     return data;
//   }
// }

// class Nutrition {
//   late int sugar;
//   late int carbohydrates;
//   late int fiber;
//   late String updatedAt;
//   late int protein;
//   late int fat;
//   late int calories;

//   Nutrition(
//       {required this.sugar,
//       required this.carbohydrates,
//       required this.fiber,
//       required this.updatedAt,
//       required this.protein,
//       required this.fat,
//       required this.calories});

//   Nutrition.fromJson(Map<String, dynamic> json) {
//     sugar = json['sugar'];
//     carbohydrates = json['carbohydrates'];
//     fiber = json['fiber'];
//     updatedAt = json['updated_at'];
//     protein = json['protein'];
//     fat = json['fat'];
//     calories = json['calories'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['sugar'] = sugar;
//     data['carbohydrates'] = carbohydrates;
//     data['fiber'] = fiber;
//     data['updated_at'] = updatedAt;
//     data['protein'] = protein;
//     data['fat'] = fat;
//     data['calories'] = calories;
//     return data;
//   }
// }

// class Sections {
//   late List<Components> components;
//   late String name;
//   late int position;

//   Sections(
//       {required this.components, required this.name, required this.position});

//   Sections.fromJson(Map<String, dynamic> json) {
//     if (json['components'] != null) {
//       components = <Components>[];
//       json['components'].forEach((v) {
//         components.add(new Components.fromJson(v));
//       });
//     }
//     name = json['name'];
//     position = json['position'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (components != null) {
//       data['components'] = components.map((v) => v.toJson()).toList();
//     }
//     data['name'] = name;
//     data['position'] = position;
//     return data;
//   }
// }

// class Components {
//   List<Measurements>? measurements;
//   String? rawText;
//   String? extraComment;
//   Ingredient? ingredient;
//   int? id;
//   int? position;

//   Components(
//       {this.measurements,
//       this.rawText,
//       this.extraComment,
//       this.ingredient,
//       this.id,
//       this.position});

//   Components.fromJson(Map<String, dynamic> json) {
//     if (json['measurements'] != null) {
//       measurements = <Measurements>[];
//       json['measurements'].forEach((v) {
//         measurements?.add(new Measurements.fromJson(v));
//       });
//     }
//     rawText = json['raw_text'];
//     extraComment = json['extra_comment'];
//     ingredient = json['ingredient'] != null
//         ? Ingredient.fromJson(json['ingredient'])
//         : null;
//     id = json['id'];
//     position = json['position'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     if (measurements != null) {
//       data['measurements'] = measurements?.map((v) => v.toJson()).toList();
//     }
//     data['raw_text'] = rawText;
//     data['extra_comment'] = extraComment;
//     if (ingredient != null) {
//       data['ingredient'] = ingredient?.toJson();
//     }
//     data['id'] = id;
//     data['position'] = position;
//     return data;
//   }
// }

// class Measurements {
//   Unit? unit;
//   String? quantity;
//   int? id;

//   Measurements({this.unit, this.quantity, this.id});

//   Measurements.fromJson(Map<String, dynamic> json) {
//     unit = json['unit'] != null ? new Unit.fromJson(json['unit']) : null;
//     quantity = json['quantity'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (unit != null) {
//       data['unit'] = unit?.toJson();
//     }
//     data['quantity'] = quantity;
//     data['id'] = id;
//     return data;
//   }
// }

// class Unit {
//   String? name;
//   String? displayPlural;
//   String? displaySingular;
//   String? abbreviation;
//   String? system;

//   Unit(
//       {this.name,
//       this.displayPlural,
//       this.displaySingular,
//       this.abbreviation,
//       this.system});

//   Unit.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     displayPlural = json['display_plural'];
//     displaySingular = json['display_singular'];
//     abbreviation = json['abbreviation'];
//     system = json['system'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['name'] = name;
//     data['display_plural'] = displayPlural;
//     data['display_singular'] = displaySingular;
//     data['abbreviation'] = abbreviation;
//     data['system'] = system;
//     return data;
//   }
// }

// class Ingredient {
//   int? id;
//   String? displaySingular;
//   int? updatedAt;
//   String? name;
//   int? createdAt;
//   String? displayPlural;

//   Ingredient(
//       {this.id,
//       this.displaySingular,
//       this.updatedAt,
//       this.name,
//       this.createdAt,
//       this.displayPlural});

//   Ingredient.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     displaySingular = json['display_singular'];
//     updatedAt = json['updated_at'];
//     name = json['name'];
//     createdAt = json['created_at'];
//     displayPlural = json['display_plural'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     data['display_singular'] = displaySingular;
//     data['updated_at'] = updatedAt;
//     data['name'] = name;
//     data['created_at'] = createdAt;
//     data['display_plural'] = displayPlural;
//     return data;
//   }
// }

// class Credits {
//   String? type;
//   String? name;

//   Credits({this.type, this.name});

//   Credits.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['type'] = type;
//     data['name'] = name;
//     return data;
//   }
// }

// class Renditions {
//   String? posterUrl;
//   int? fileSize;
//   String? url;
//   int? duration;
//   int? bitRate;
//   String? aspect;
//   int? height;
//   String? container;
//   String? contentType;
//   int? width;
//   int? minimumBitRate;
//   String? name;
//   int? maximumBitRate;

//   Renditions(
//       {this.posterUrl,
//       required this.fileSize,
//       this.url,
//       required this.duration,
//       required this.bitRate,
//       required this.aspect,
//       this.height,
//       required this.container,
//       this.contentType,
//       this.width,
//       required this.minimumBitRate,
//       this.name,
//       this.maximumBitRate});

//   Renditions.fromJson(Map<String, dynamic> json) {
//     posterUrl = json['poster_url'];
//     fileSize = json['file_size'];
//     url = json['url'];
//     duration = json['duration'];
//     bitRate = json['bit_rate'];
//     aspect = json['aspect'];
//     height = json['height'];
//     container = json['container'];
//     contentType = json['content_type'];
//     width = json['width'];
//     minimumBitRate = json['minimum_bit_rate'];
//     name = json['name'];
//     maximumBitRate = json['maximum_bit_rate'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['poster_url'] = posterUrl;
//     data['file_size'] = fileSize;
//     data['url'] = url;
//     data['duration'] = duration;
//     data['bit_rate'] = bitRate;
//     data['aspect'] = aspect;
//     data['height'] = height;
//     data['container'] = container;
//     data['content_type'] = contentType;
//     data['width'] = width;
//     data['minimum_bit_rate'] = minimumBitRate;
//     data['name'] = name;
//     data['maximum_bit_rate'] = maximumBitRate;
//     return data;
//   }
// }

// class Show {
//   String? name;
//   int? id;

//   Show({this.name, this.id});

//   Show.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['id'] = id;
//     return data;
//   }
// }

// class TotalTimeTier {
//   late String? tier;
//   late String? displayTier;

//   TotalTimeTier({required this.tier, this.displayTier});

//   TotalTimeTier.fromJson(Map<String, dynamic> json) {
//     tier = json['tier'];
//     displayTier = json['display_tier'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['tier'] = tier;
//     data['display_tier'] = displayTier;
//     return data;
//   }
// }

// class Topics {
//   late String? name;
//   late String? slug;

//   Topics({this.name, required this.slug});

//   Topics.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     slug = json['slug'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = name;
//     data['slug'] = slug;
//     return data;
//   }
// }

// class Tags {
//   int? id;
//   String? displayName;
//   String? type;
//   String? name;

//   Tags({this.id, this.displayName, this.type, this.name});

//   Tags.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     displayName = json['display_name'];
//     type = json['type'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     data['display_name'] = displayName;
//     data['type'] = type;
//     data['name'] = name;
//     return data;
//   }
// }

// class Recipes {
//   int? createdAt;
//   List<Credits>? credits;
//   String? videoAdContent;
//   String? originalVideoUrl;
//   Nutrition? nutrition;
//   Show? show;
//   List<Compilations>? compilations;
//   List<Topics>? topics;
//   int? cookTimeMinutes;
//   int? showId;
//   String? name;
//   int? id;
//   String? slug;
//   int? prepTimeMinutes;
//   List<Tags>? tags;
//   int? buzzId;
//   int? updatedAt;
//   String? nutritionVisibility;
//   String? country;
//   String? inspiredByUrl;
//   String? thumbnailAltText;
//   TotalTimeTier? totalTimeTier;
//   List<Sections>? sections;
//   dynamic brandId;
//   int? totalTimeMinutes;
//   bool? isOneTop;
//   String? servingsNounPlural;
//   bool? isShoppable;
//   String? seoTitle;
//   String? promotion;
//   bool? tipsAndRatingsEnabled;
//   String? description;
//   String? draftStatus;
//   String? thumbnailUrl;
//   String? beautyUrl;
//   String? canonicalId;
//   int? videoId;
//   String? language;
//   dynamic brand;
//   int? numServings;
//   String? aspectRatio;
//   int? approvedAt;
//   String? keywords;
//   UserRatings? userRatings;
//   String? servingsNounSingular;
//   String? videoUrl;
//   late List<Renditions>? renditions;
//   late String? yields;
//   late List<Instructions>? instructions;
//   late List<dynamic>? facebookPosts;
//   late int? iId;
//   late String? sType;
//   late String? sIndex;
//   late String? sOpType;

//   Recipes(
//       {required this.createdAt,
//       required this.credits,
//       required this.videoAdContent,
//       required this.originalVideoUrl,
//       required this.nutrition,
//       required this.show,
//       required this.compilations,
//       required this.topics,
//       required this.cookTimeMinutes,
//       required this.showId,
//       required this.name,
//       required this.id,
//       required this.slug,
//       required this.prepTimeMinutes,
//       required this.tags,
//       required this.buzzId,
//       required this.updatedAt,
//       required this.nutritionVisibility,
//       required this.country,
//       required this.inspiredByUrl,
//       required this.thumbnailAltText,
//       required this.totalTimeTier,
//       required this.sections,
//       required this.brandId,
//       this.totalTimeMinutes,
//       required this.isOneTop,
//       required this.servingsNounPlural,
//       required this.isShoppable,
//       this.seoTitle,
//       this.promotion,
//       required this.tipsAndRatingsEnabled,
//       required this.description,
//       required this.draftStatus,
//       required this.thumbnailUrl,
//       required this.beautyUrl,
//       required this.canonicalId,
//       required this.videoId,
//       required this.language,
//       required this.brand,
//       required this.numServings,
//       required this.aspectRatio,
//       required this.approvedAt,
//       required this.keywords,
//       required this.userRatings,
//       required this.servingsNounSingular,
//       this.videoUrl,
//       required this.renditions,
//       required this.yields,
//       required this.instructions,
//       required this.facebookPosts,
//       required this.iId,
//       required this.sType,
//       required this.sIndex,
//       this.sOpType});

//   Recipes.fromJson(Map<String, dynamic> json) {
//     createdAt = json['created_at'];
//     if (json['credits'] != null) {
//       credits = <Credits>[];
//       json['credits'].forEach((v) {
//         credits?.add(new Credits.fromJson(v));
//       });
//     }
//     videoAdContent = json['video_ad_content'];
//     originalVideoUrl = json['original_video_url'];
//     nutrition = (json['nutrition'] != null
//         ? Nutrition.fromJson(json['nutrition'])
//         : null)!;
//     show = (json['show'] != null ? Show.fromJson(json['show']) : null)!;
//     if (json['compilations'] != null) {
//       compilations = <Compilations>[];
//       json['compilations'].forEach((v) {
//         compilations?.add(Compilations.fromJson(v));
//       });
//     }
//     if (json['topics'] != null) {
//       topics = <Topics>[];
//       json['topics'].forEach((v) {
//         topics?.add(Topics.fromJson(v));
//       });
//     }
//     cookTimeMinutes = json['cook_time_minutes'];
//     showId = json['show_id'];
//     name = json['name'];
//     id = json['id'];
//     slug = json['slug'];
//     prepTimeMinutes = json['prep_time_minutes'];
//     if (json['tags'] != null) {
//       tags = <Tags>[];
//       json['tags'].forEach((v) {
//         tags?.add(Tags.fromJson(v));
//       });
//     }
//     buzzId = json['buzz_id'];
//     updatedAt = json['updated_at'];
//     nutritionVisibility = json['nutrition_visibility'];
//     country = json['country'];
//     inspiredByUrl = json['inspired_by_url'];
//     thumbnailAltText = json['thumbnail_alt_text'];
//     totalTimeTier = (json['total_time_tier'] != null
//         ? new TotalTimeTier.fromJson(json['total_time_tier'])
//         : null)!;
//     if (json['sections'] != null) {
//       sections = <Sections>[];
//       json['sections'].forEach((v) {
//         sections?.add(new Sections.fromJson(v));
//       });
//     }
//     brandId = json['brand_id'];
//     totalTimeMinutes = json['total_time_minutes'];
//     isOneTop = json['is_one_top'];
//     servingsNounPlural = json['servings_noun_plural'];
//     isShoppable = json['is_shoppable'];
//     seoTitle = json['seo_title'];
//     promotion = json['promotion'];
//     tipsAndRatingsEnabled = json['tips_and_ratings_enabled'];
//     description = json['description'];
//     draftStatus = json['draft_status'];
//     thumbnailUrl = json['thumbnail_url'];
//     beautyUrl = json['beauty_url'];
//     canonicalId = json['canonical_id'];
//     videoId = json['video_id'];
//     language = json['language'];
//     brand = json['brand'];
//     numServings = json['num_servings'];
//     aspectRatio = json['aspect_ratio'];
//     approvedAt = json['approved_at'];
//     keywords = json['keywords'];
//     userRatings = (json['user_ratings'] != null
//         ? UserRatings.fromJson(json['user_ratings'])
//         : null)!;
//     servingsNounSingular = json['servings_noun_singular'];
//     videoUrl = json['video_url'];
//     if (json['renditions'] != null) {
//       renditions = <Renditions>[];
//       json['renditions'].forEach((v) {
//         renditions?.add(new Renditions.fromJson(v));
//       });
//     }
//     yields = json['yields'];
//     if (json['instructions'] != null) {
//       instructions = <Instructions>[];
//       json['instructions'].forEach((v) {
//         instructions?.add(new Instructions.fromJson(v));
//       });
//     }
//     if (json['facebook_posts'] != null) {
//       facebookPosts = [];
//       json['facebook_posts'].forEach((v) {
//         facebookPosts?.add(facebookPosts);
//       });
//     }
//     iId = json['_id'];
//     sType = json['_type'];
//     sIndex = json['_index'];
//     sOpType = json['_op_type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['created_at'] = createdAt;
//     if (credits != null) {
//       data['credits'] = credits?.map((v) => v.toJson()).toList();
//     }
//     data['video_ad_content'] = videoAdContent;
//     data['original_video_url'] = originalVideoUrl;
//     if (nutrition != null) {
//       data['nutrition'] = nutrition?.toJson();
//     }
//     if (show != null) {
//       data['show'] = show?.toJson();
//     }
//     if (compilations != null) {
//       data['compilations'] = compilations?.map((v) => v.toJson()).toList();
//     }
//     if (topics != null) {
//       data['topics'] = topics?.map((v) => v.toJson()).toList();
//     }
//     data['cook_time_minutes'] = cookTimeMinutes;
//     data['show_id'] = showId;
//     data['name'] = name;
//     data['id'] = id;
//     data['slug'] = slug;
//     data['prep_time_minutes'] = prepTimeMinutes;
//     if (tags != null) {
//       data['tags'] = tags?.map((v) => v.toJson()).toList();
//     }
//     data['buzz_id'] = buzzId;
//     data['updated_at'] = updatedAt;
//     data['nutrition_visibility'] = nutritionVisibility;
//     data['country'] = country;
//     data['inspired_by_url'] = inspiredByUrl;
//     data['thumbnail_alt_text'] = thumbnailAltText;
//     if (totalTimeTier != null) {
//       data['total_time_tier'] = totalTimeTier?.toJson();
//     }
//     if (sections != null) {
//       data['sections'] = sections?.map((v) => v.toJson()).toList();
//     }
//     data['brand_id'] = brandId;
//     data['total_time_minutes'] = totalTimeMinutes;
//     data['is_one_top'] = isOneTop;
//     data['servings_noun_plural'] = servingsNounPlural;
//     data['is_shoppable'] = isShoppable;
//     data['seo_title'] = seoTitle;
//     data['promotion'] = promotion;
//     data['tips_and_ratings_enabled'] = tipsAndRatingsEnabled;
//     data['description'] = description;
//     data['draft_status'] = draftStatus;
//     data['thumbnail_url'] = thumbnailUrl;
//     data['beauty_url'] = beautyUrl;
//     data['canonical_id'] = canonicalId;
//     data['video_id'] = videoId;
//     data['language'] = language;
//     data['brand'] = brand;
//     data['num_servings'] = numServings;
//     data['aspect_ratio'] = aspectRatio;
//     data['approved_at'] = approvedAt;
//     data['keywords'] = keywords;
//     if (userRatings != null) {
//       data['user_ratings'] = userRatings?.toJson();
//     }
//     data['servings_noun_singular'] = servingsNounSingular;
//     data['video_url'] = videoUrl;
//     if (renditions != null) {
//       data['renditions'] = renditions?.map((v) => v.toJson()).toList();
//     }
//     data['yields'] = yields;
//     if (instructions != null) {
//       data['instructions'] = instructions?.map((v) => v.toJson()).toList();
//     }
//     if (facebookPosts != null) {
//       data['facebook_posts'] = facebookPosts?.map((v) => v.toJson()).toList();
//     }
//     data['_id'] = iId;
//     data['_type'] = sType;
//     data['_index'] = sIndex;
//     data['_op_type'] = sOpType;
//     return data;
//   }
// }

// class Compilations {
//   late String aspectRatio;
//   late String keywords;
//   late String thumbnailAltText;
//   late String canonicalId;
//   late String language;
//   late String beautyUrl;
//   late String country;
//   late List<Show> show;
//   late int createdAt;
//   late String draftStatus;
//   late int videoId;
//   late bool isShoppable;
//   late String description;
//   late String name;
//   late int id;
//   late int buzzId;
//   late String slug;
//   late String promotion;
//   late List<Null> facebookPosts;
//   late String thumbnailUrl;
//   late String videoUrl;
//   late int approvedAt;

//   Compilations(
//       {required this.aspectRatio,
//       required this.keywords,
//       required this.thumbnailAltText,
//       required this.canonicalId,
//       required this.language,
//       required this.beautyUrl,
//       required this.country,
//       required this.show,
//       required this.createdAt,
//       required this.draftStatus,
//       required this.videoId,
//       required this.isShoppable,
//       required this.description,
//       required this.name,
//       required this.id,
//       required this.buzzId,
//       required this.slug,
//       required this.promotion,
//       required this.facebookPosts,
//       required this.thumbnailUrl,
//       required this.videoUrl,
//       required this.approvedAt});

//   Compilations.fromJson(Map<String, dynamic> json) {
//     aspectRatio = json['aspect_ratio'];
//     keywords = json['keywords'];
//     thumbnailAltText = json['thumbnail_alt_text'];
//     canonicalId = json['canonical_id'];
//     language = json['language'];
//     beautyUrl = json['beauty_url'];
//     country = json['country'];
//     if (json['show'] != null) {
//       show = [];
//       json['show'].forEach((v) {
//         show.add(Show.fromJson(v));
//       });
//     }
//     createdAt = json['created_at'];
//     draftStatus = json['draft_status'];
//     videoId = json['video_id'];
//     isShoppable = json['is_shoppable'];
//     description = json['description'];
//     name = json['name'];
//     id = json['id'];
//     buzzId = json['buzz_id'];
//     slug = json['slug'];
//     promotion = json['promotion'];
//     //   if (json['facebook_posts'] != null) {
//     //     facebookPosts = [];
//     //     json['facebook_posts'].forEach((v) {
//     //       facebookPosts.add(facebookPosts);
//     //     });
//     //   }
//     //   thumbnailUrl = json['thumbnail_url'];
//     //   videoUrl = json['video_url'];
//     //   approvedAt = json['approved_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['aspect_ratio'] = aspectRatio;
//     data['keywords'] = keywords;
//     data['thumbnail_alt_text'] = thumbnailAltText;
//     data['canonical_id'] = canonicalId;
//     data['language'] = language;
//     data['beauty_url'] = beautyUrl;
//     data['country'] = country;
//     if (show != null) {
//       data['show'] = show.map((v) => v.toJson()).toList();
//     }
//     data['created_at'] = createdAt;
//     data['draft_status'] = draftStatus;
//     data['video_id'] = videoId;
//     data['is_shoppable'] = isShoppable;
//     data['description'] = description;
//     data['name'] = name;
//     data['id'] = id;
//     data['buzz_id'] = buzzId;
//     data['slug'] = slug;
//     data['promotion'] = promotion;
//     // if (facebookPosts != null) {
//     //   data['facebook_posts'] = facebookPosts.map((v) => v!.toJson()).toList();
//     // }
//     // data['thumbnail_url'] = thumbnailUrl;
//     // data['video_url'] = videoUrl;
//     // data['approved_at'] = approvedAt;
//     return data;
//   }
// }
