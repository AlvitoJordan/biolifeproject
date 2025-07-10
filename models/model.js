import Sequelize from "sequelize";

// const Sequelize = require("sequelize")

const sequelize = new Sequelize("project_db","root","",{
    host: 'localhost',
    dialect: 'mysql'
});

export default sequelize

// module.exports = sequelize;