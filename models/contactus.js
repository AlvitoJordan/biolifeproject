import sequelize from "./model.js";
import Sequelize from "sequelize";

const Contactus = sequelize.define('contactus', {
    id: {
        type : Sequelize.INTEGER,
        autoIncrement : true,
        allowNull : false,
        primaryKey : true,
    },
    name : {
        type : Sequelize.STRING
    },
    email : {
        type : Sequelize.STRING
    },
    phone: {
        type : Sequelize.STRING
    },
    comment: {
        type : Sequelize.STRING
    },
});

export default Contactus