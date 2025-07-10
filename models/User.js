import sequelize from "./model.js";
import Sequelize from "sequelize";

const User = sequelize.define('User', {
    Id: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
    name : {
        type : Sequelize.STRING,
        allowNull : false,
    },
    DayOfBirth : {
        type : Sequelize.DATEONLY,
        allowNull : true,
    },
    address : {
        type : Sequelize.STRING,
        allowNull : true,
    },
    email : {
        type : Sequelize.STRING,
        allowNull : false,
    },
    password : {
        type : Sequelize.STRING,
        allowNull : false,
    },
    gender : {
        type : Sequelize.STRING,
        allowNull : true,
    },
    phone : {
        type : Sequelize.STRING,
        allowNull : true,
    },
    image : {
        type : Sequelize.STRING,
        allowNull : true,
    }
},
{
    timestamps : false
});

export default User