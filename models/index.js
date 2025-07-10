import Product from "./Product.js";
import Categories from "./Categories.js";
import sequelize from "./model.js";
import User from "./User.js"
import Ulasan from "./ulasan.js";
import Wishlist from "./Wishlist.js";
import Cart from "./Cart.js"
import Payment from "./Payment.js";

const model = {}

Categories.hasMany(Product)
Product.belongsTo(Categories)

Product.hasMany(Ulasan)
Ulasan.belongsTo(Product)

User.hasOne(Wishlist)
Wishlist.belongsTo(User)

Product.hasMany(Wishlist)
Wishlist.belongsTo(Product)

User.hasOne(Cart)
Cart.belongsTo(User)

Product.hasMany(Cart)
Cart.belongsTo(Product)

Product.hasMany(Payment)
Payment.belongsTo(Product)

User.hasOne(Payment)
Payment.belongsTo(User)

// sequelize.sync({alter:true})

export default model

// module.exports = model