import sequelize from "./model.js";
import Sequelize from "sequelize";

const Ulasan = sequelize.define('Ulasans', {
    id: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
    name : {
        type : Sequelize.STRING,
        allowNull : false,
    },
    email : {
        type : Sequelize.STRING,
        allowNull : false,
    },
    comment : {
        type : Sequelize.STRING,
        allowNull : false,
    }
},
{
    timestamps : false
});

export default Ulasan