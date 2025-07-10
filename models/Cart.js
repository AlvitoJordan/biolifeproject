import sequelize from "./model.js";
import Sequelize from "sequelize";

const Cart = sequelize.define('Cart', {
    Id: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
    Qty: {
        type : Sequelize.INTEGER,
        allowNull : false,
    },
    Total: {
        type : Sequelize.INTEGER,
        allowNull : false,
    },
});

export default Cart