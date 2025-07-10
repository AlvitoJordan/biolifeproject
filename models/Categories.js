import sequelize from "./model.js";
import Sequelize from "sequelize";

const Categories = sequelize.define('Categories', {
    Id: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
    Name: {
        type : Sequelize.STRING,
        allowNull : false,
    },
    Icon: {
        type : Sequelize.STRING,
        allowNull : false
    }
},
{
    timestamps : false
});

export default Categories