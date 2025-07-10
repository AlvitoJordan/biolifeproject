import sequelize from "./model.js";
import Sequelize from "sequelize";

const Payment = sequelize.define('Payment', {
    Id: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
    OrderId: {
        type : Sequelize.STRING,
        allowNull : false,
    },
    code : {
        type : Sequelize.STRING,
        allowNull : false
    },
    method : {
        type : Sequelize.STRING,
        allowNull : false
    },
    qty :{
        type : Sequelize.INTEGER,
        allowNull : false,
    },
    subtotal : {
        type : Sequelize.INTEGER.UNSIGNED,
        allowNull : false,
    },
    totalProduct :{
        type :Sequelize.INTEGER.UNSIGNED,
        allowNull : false,
    }
});

export default Payment