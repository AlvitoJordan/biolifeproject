import sequelize from "./model.js";
import Sequelize from "sequelize";

const Wishlist = sequelize.define('Wishlist', {
    Id: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
});

export default Wishlist