import 'category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = "kkkk";
  categoryModel.imageUrl = "";
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  return category;
}