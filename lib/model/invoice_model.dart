class InvoiceModel {
  bool? success;
  String? message;
  Data? data;

  InvoiceModel({this.success, this.message, this.data});

  InvoiceModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? userId;
  String? createdBy;
  String? status;
  String? createdAt;
  String? createFromPlace;
  String? updatedAt;
  String? uploadedReceipt;
  String? uploadedReceiptDate;
  User? user;
  List<InvoiceDetil>? invoiceDetil;

  Data(
      {this.id,
        this.userId,
        this.createdBy,
        this.status,
        this.createdAt,
        this.createFromPlace,
        this.updatedAt,
        this.uploadedReceipt,
        this.uploadedReceiptDate,
        this.user,
        this.invoiceDetil});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    createdBy = json['created_by'];
    status = json['status'];
    createdAt = json['created_at'];
    createFromPlace = json['create_from_place'];
    updatedAt = json['updated_at'];
    uploadedReceipt = json['uploaded_receipt'];
    uploadedReceiptDate = json['uploaded_receipt_date'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    if (json['invoice_detil'] != null) {
      invoiceDetil = <InvoiceDetil>[];
      json['invoice_detil'].forEach((v) {
        invoiceDetil!.add(new InvoiceDetil.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['created_by'] = this.createdBy;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['create_from_place'] = this.createFromPlace;
    data['updated_at'] = this.updatedAt;
    data['uploaded_receipt'] = this.uploadedReceipt;
    data['uploaded_receipt_date'] = this.uploadedReceiptDate;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.invoiceDetil != null) {
      data['invoice_detil'] =
          this.invoiceDetil!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  int? id;
  String? firstName;
  String? email;
  String? isActive;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
        this.firstName,
        this.email,
        this.isActive,
        this.createdAt,
        this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    email = json['email'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['email'] = this.email;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class InvoiceDetil {
  int? id;
  String? invoiceId;
  String? groupId;
  String? categoryId;
  String? courseId;
  String? qty;
  String? price;
  Null? createdAt;
  Null? updatedAt;
  Category? category;
  Groups? groups;
  Course? course;

  InvoiceDetil(
      {this.id,
        this.invoiceId,
        this.groupId,
        this.categoryId,
        this.courseId,
        this.qty,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.category,
        this.groups,
        this.course});

  InvoiceDetil.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    invoiceId = json['invoice_id'];
    groupId = json['group_id'];
    categoryId = json['category_id'];
    courseId = json['course_id'];
    qty = json['qty'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    groups =
    json['groups'] != null ? new Groups.fromJson(json['groups']) : null;
    course =
    json['course'] != null ? new Course.fromJson(json['course']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['invoice_id'] = this.invoiceId;
    data['group_id'] = this.groupId;
    data['category_id'] = this.categoryId;
    data['course_id'] = this.courseId;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.groups != null) {
      data['groups'] = this.groups!.toJson();
    }
    if (this.course != null) {
      data['course'] = this.course!.toJson();
    }
    return data;
  }
}

class Category {
  int? id;
  String? masterCategoryId;
  String? groupId;
  String? name;
  String? slug;
  Null? iconClass;
  String? isActive;
  Null? createdAt;
  Null? updatedAt;
  MasterCategory? masterCategory;

  Category(
      {this.id,
        this.masterCategoryId,
        this.groupId,
        this.name,
        this.slug,
        this.iconClass,
        this.isActive,
        this.createdAt,
        this.updatedAt,
        this.masterCategory});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    masterCategoryId = json['master_category_id'];
    groupId = json['group_id'];
    name = json['name'];
    slug = json['slug'];
    iconClass = json['icon_class'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    masterCategory = json['master_category'] != null
        ? new MasterCategory.fromJson(json['master_category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['master_category_id'] = this.masterCategoryId;
    data['group_id'] = this.groupId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['icon_class'] = this.iconClass;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.masterCategory != null) {
      data['master_category'] = this.masterCategory!.toJson();
    }
    return data;
  }
}

class MasterCategory {
  int? id;
  String? name;
  String? slug;
  String? iconClass;
  String? isActive;
  String? createdAt;
  String? updatedAt;

  MasterCategory(
      {this.id,
        this.name,
        this.slug,
        this.iconClass,
        this.isActive,
        this.createdAt,
        this.updatedAt});

  MasterCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    iconClass = json['icon_class'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['icon_class'] = this.iconClass;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Groups {
  int? id;
  String? name;
  String? registrationMethod;
  Null? description;
  String? isActive;
  String? totalSeat;
  Null? expireOn;

  Groups(
      {this.id,
        this.name,
        this.registrationMethod,
        this.description,
        this.isActive,
        this.totalSeat,
        this.expireOn});

  Groups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    registrationMethod = json['registration_method'];
    description = json['description'];
    isActive = json['is_active'];
    totalSeat = json['total_seat'];
    expireOn = json['expire_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['registration_method'] = this.registrationMethod;
    data['description'] = this.description;
    data['is_active'] = this.isActive;
    data['total_seat'] = this.totalSeat;
    data['expire_on'] = this.expireOn;
    return data;
  }
}

class Course {
  int? id;
  String? instructorId;
  String? categoryId;
  String? masterCourseId;
  Null? instructionLevelId;
  String? courseTitle;
  String? courseSlug;
  Null? keywords;
  Null? overview;
  Null? courseImage;
  Null? thumbImage;
  String? courseVideo;
  Null? duration;
  String? price;
  Null? strikeOutPrice;
  String? isActive;
  Null? createdAt;
  Null? updatedAt;
  MasterCourse? masterCourse;

  Course(
      {this.id,
        this.instructorId,
        this.categoryId,
        this.masterCourseId,
        this.instructionLevelId,
        this.courseTitle,
        this.courseSlug,
        this.keywords,
        this.overview,
        this.courseImage,
        this.thumbImage,
        this.courseVideo,
        this.duration,
        this.price,
        this.strikeOutPrice,
        this.isActive,
        this.createdAt,
        this.updatedAt,
        this.masterCourse});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    instructorId = json['instructor_id'];
    categoryId = json['category_id'];
    masterCourseId = json['master_course_id'];
    instructionLevelId = json['instruction_level_id'];
    courseTitle = json['course_title'];
    courseSlug = json['course_slug'];
    keywords = json['keywords'];
    overview = json['overview'];
    courseImage = json['course_image'];
    thumbImage = json['thumb_image'];
    courseVideo = json['course_video'];
    duration = json['duration'];
    price = json['price'];
    strikeOutPrice = json['strike_out_price'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    masterCourse = json['master_course'] != null
        ? new MasterCourse.fromJson(json['master_course'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['instructor_id'] = this.instructorId;
    data['category_id'] = this.categoryId;
    data['master_course_id'] = this.masterCourseId;
    data['instruction_level_id'] = this.instructionLevelId;
    data['course_title'] = this.courseTitle;
    data['course_slug'] = this.courseSlug;
    data['keywords'] = this.keywords;
    data['overview'] = this.overview;
    data['course_image'] = this.courseImage;
    data['thumb_image'] = this.thumbImage;
    data['course_video'] = this.courseVideo;
    data['duration'] = this.duration;
    data['price'] = this.price;
    data['strike_out_price'] = this.strikeOutPrice;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.masterCourse != null) {
      data['master_course'] = this.masterCourse!.toJson();
    }
    return data;
  }
}

class MasterCourse {
  int? id;
  String? instructorId;
  String? categoryId;
  String? instructionLevelId;
  String? courseTitle;
  String? courseSlug;
  String? keywords;
  String? overview;
  String? courseImage;
  String? thumbImage;
  String? courseVideo;
  String? duration;
  String? price;
  String? strikeOutPrice;
  String? isActive;
  String? createdAt;
  String? updatedAt;

  MasterCourse(
      {this.id,
        this.instructorId,
        this.categoryId,
        this.instructionLevelId,
        this.courseTitle,
        this.courseSlug,
        this.keywords,
        this.overview,
        this.courseImage,
        this.thumbImage,
        this.courseVideo,
        this.duration,
        this.price,
        this.strikeOutPrice,
        this.isActive,
        this.createdAt,
        this.updatedAt});

  MasterCourse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    instructorId = json['instructor_id'];
    categoryId = json['category_id'];
    instructionLevelId = json['instruction_level_id'];
    courseTitle = json['course_title'];
    courseSlug = json['course_slug'];
    keywords = json['keywords'];
    overview = json['overview'];
    courseImage = json['course_image'];
    thumbImage = json['thumb_image'];
    courseVideo = json['course_video'];
    duration = json['duration'];
    price = json['price'];
    strikeOutPrice = json['strike_out_price'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['instructor_id'] = this.instructorId;
    data['category_id'] = this.categoryId;
    data['instruction_level_id'] = this.instructionLevelId;
    data['course_title'] = this.courseTitle;
    data['course_slug'] = this.courseSlug;
    data['keywords'] = this.keywords;
    data['overview'] = this.overview;
    data['course_image'] = this.courseImage;
    data['thumb_image'] = this.thumbImage;
    data['course_video'] = this.courseVideo;
    data['duration'] = this.duration;
    data['price'] = this.price;
    data['strike_out_price'] = this.strikeOutPrice;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
