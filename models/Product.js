import sequelize from "./model.js";
import Sequelize from "sequelize";

const Product = sequelize.define('Product', {
    productId: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
    name : {
        type : Sequelize.STRING,
        allowNull : false,
    },
    description : {
        type : Sequelize.TEXT,
        allowNull : false,
    },

    price : {
        type : Sequelize.INTEGER.UNSIGNED,
        allowNull : false,
    },
    stock : {
        type : Sequelize.INTEGER.UNSIGNED,
        allowNull : false,
    },
    image : {
        type : Sequelize.STRING,
        allowNull : false,
    },
});

export default Product