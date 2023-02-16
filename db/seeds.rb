ActiveRecord::Base.transaction do
  UserClassification.create!(user_classification_name: "admin")
  UserClassification.create!(user_classification_name: "general")
  3.times do |i|
    User.create!(
      password: "qwerty123",
      last_name: "user#{i}",
      first_name: "user#{i}",
      zipcode: "731319#{i}",
      prefecture: "広島県",
      municipality: "広島市安佐南区",
      address: "大塚東",
      apartments: "1-1-#{i}",
      email: "a#{i}@example.com",
      phone_number: "082123000#{i}",
      user_classification: UserClassification.find_by(user_classification_name: "general"),
      company_name: "株式会社aaa",
    )
  end
  
  Category.create!(category_name: "家具")
  Category.create!(category_name: "文房具")
  
  SaleStatus.create!(sale_status_name: "販売中")
  SaleStatus.create!(sale_status_name: "売り切れ")
  
  ProductStatus.create!(product_status_name: "新品")
  ProductStatus.create!(product_status_name: "新品同様")
  
  Product.create!(
    product_name: "テーブル",
    category_id: 1,
    price: 10000,
    description: "商品説明:木目を活かした、和室でも、洋室でも使えるナチュラルなローテーブルです",
    sale_status_id: 1,
    product_status_id: 1,
    regist_date: DateTime.parse("1993-02-24T12:30:45"),
    user_id: 1,
    delete_flg: false,
  )
  
  Product.create!(
    product_name: "椅子",
    category_id: 1,
    price: 5000,
    description: "商品説明:洗練されたモダンデザインのハイバックチェアです",
    sale_status_id: 1,
    product_status_id: 2,
    regist_date: DateTime.parse("1993-02-24T12:30:45"),
    user_id: 1,
    delete_flg: false,
  )
  
  Product.create!(
    product_name: "タンス",
    category_id: 1,
    price: 30000,
    description: "商品説明:上質な空間を作り上げる、プレミアムな多段衣類収納チェストです",
    sale_status_id: 2,
    product_status_id: 1,
    regist_date: DateTime.parse("1993-02-24T12:30:45"),
    user_id: 1,
    delete_flg: false,
  )
  
  Product.create!(
    product_name: "ベッド",
    category_id: 1,
    price: 40000,
    description: "商品説明:シンプルで使いやすいフランスベッドのマットレスベッドです",
    sale_status_id: 2,
    product_status_id: 2,
    regist_date: DateTime.parse("1993-02-24T12:30:45"),
    user_id: 1,
    delete_flg: false,
  )
  
  100.times do |i|
    Product.create!(
      product_name: "ボールペン#{i}",
      category_id: 2,
      price: 200,
      description: "商品説明:シンプルで書きやすい人気のボールペンです",
      sale_status_id: 2,
      product_status_id: 2,
      regist_date: DateTime.parse("1993-02-24T12:30:45"),
      user_id: 1,
      delete_flg: false,
    )
  end
  
  Purchase.create!(
    purchase_price: 70000,
    purchase_quantity: 5,
    purchase_company: "株式会社NI",
    order_date: DateTime.parse("1993-02-24T12:30:45"),
    purchase_date: DateTime.parse("1993-02-24T12:30:45"),
    product_id: 1,
  )
  
  Purchase.create!(
    purchase_price: 30000,
    purchase_quantity: 2,
    purchase_company: "株式会社DI",
    order_date: DateTime.parse("1993-02-24T12:30:45"),
    purchase_date: DateTime.parse("1993-02-24T12:30:45"),
    product_id: 2,
  )
end
