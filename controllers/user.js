import User from '../models/User.js'
import multer from 'multer'
import path from 'path'
import Categories from '../models/Categories.js'
import crypto from 'crypto'
import Contactus from "../models/contactus.js"
import Ulasan from '../models/ulasan.js'
import Product from '../models/Product.js'

const login = async (req,res,next) => {
    let msg = req.session.err||"";
    req.session.err = "";
    await Categories.findAll().then(results => {
        res.render("login", {Categories: results,User:req.session.User||"",message:msg})
    })
}

const register = async(req,res,next) => {
    let msg = req.session.err||"";
    req.session.err = "";
    await Categories.findAll().then(results =>{
        res.render("register", {Categories: results,User:req.session.User||"",message:msg})
    })
}

const changePass = async(req,res,next) => {
    let msg = req.session.err||"";
    req.session.err = "";
    await Categories.findAll().then(results =>{
        res.render("changePass", {Categories: results,User:req.session.User||"",message:msg})
    })
}

const contact = async (req,res,next) => {
    await Contactus.create({ 
        name: req.session.User.name||"",
        email:req.session.User.email||"",
        phone:req.session.User.phone||"", 
        comment: req.body.comment}
    ).then((results) => {
        res.json({ status: 200, error: null, Response: results });
    }).catch(err => {
        res.json({ status: 500, error: err, Response: {} });
    })
}
const review= async (req,res,next) => {
    await Ulasan.create({ 
        name: req.session.User.name||"",
        email:req.session.User.email||"",
        comment: req.body.comment,
        ProductProductId:req.params.id
    }
    ).then((results) => {
        res.redirect('/product-page');
    }).catch(err => {
        res.json({ status: 500, error: err, Response: {} });
    })
}


const pay = async(req,res)=>{
    let msg = req.session.err||"";
    req.session.err = "";
    await Categories.findAll().then(results =>{
        res.render("payment", {Categories: results,User:req.session.User||"",message:msg})
    })
}

const Profile = async (req,res,next) => {
    let msg = req.session.err||"";
    req.session.err = "";

    const user = await User.findOne({where : {name : req.session.User.name}})
    const Kategori = await Categories.findAll()

    Promise.all([user,Kategori]).then(results => {
        res.render("profile", {User : results[0]||"", Categories: results[1],message:msg})
    })
}

const logout = (req,res,next) => {
    req.session.destroy();
    res.redirect("/")
}
const getHashedPassword = (password) => {
    const sha256 = crypto.createHash('sha256');
    const hash = sha256.update(password).digest('base64');
    return hash;
}
const auth = (req,res,next) => {
    const data = {
        email: req.body.email, 
        password: req.body.password,
    };
    const hashedPassword = getHashedPassword(data.password);
    req.session.err = "";
    User.findOne({ where: { email: data.email } }).then(results => {
        if (results.email === data.email && hashedPassword === results.password){
            req.session.User = results;
            res.redirect('/');
        }
        else if (hashedPassword != results.password){
            req.session.err = 'Incorrect password.';
            res.redirect('/login');
        }
    }).catch(err => {
        req.session.err = "Incorrect Email or Password";
        res.redirect('/login');
    });
}

const authRegister = async(req,res,next) =>{
    // const salt = await bcrypt.genSalt()
    // const hashedPassword = await bcrypt.hash(req.body.password,salt)
    // const hashedConfirmPassword = await bcrypt.hash(req.body.confirmPassword,salt)
    const getHashedPassword = (password) => {
        const sha256 = crypto.createHash('sha256');
        const hash = sha256.update(password).digest('base64');
        return hash;
    }
    const hashedPassword = getHashedPassword(req.body.password);
    const hashedConfirmPassword = getHashedPassword(req.body.confirmPassword)

    const registerdata = {
        name : req.body.name,
        email : req.body.email,
        password : hashedPassword,
        confirmPassword : hashedConfirmPassword,
    }
    
    req.session.err = ""
    User.findOne({where : { email : registerdata.email}}).then(results=>{
        if(!results){
            if(registerdata.password != registerdata.confirmPassword){
                req.session.err = "Please match the password first"
                res.redirect("/register")
            }
            else{
                User.create({name : registerdata.name, email : registerdata.email, password : registerdata.password}).then(() =>{
                    res.redirect("/login")
                })
            }
        }
        else if(registerdata.email == results.email){
            req.session.err = "Email is already in use by another user. Please Change the Email"
            res.redirect("/register")
        }
    });
}

const authPasword = async (req,res,next) => {
    const getHashedPassword = (password) => {
        const sha256 = crypto.createHash('sha256');
        const hash = sha256.update(password).digest('base64');
        return hash;
    }
    const hashedPassword = getHashedPassword(req.body.password);
    const hashedConfirmPassword = getHashedPassword(req.body.confirmPassword)

    const pass = {
        email : req.body.email,
        password : hashedPassword,
        confirmPassword :hashedConfirmPassword,
    }
    req.session.err = ""
    User.findOne({where : { email : pass.email}}).then(results=>{
        if(results){
            if(pass.password != pass.confirmPassword){
                req.session.err = "Please match the password first"
                res.redirect("/changePassword")
            }
            else{
                User.update({name : pass.name, email : pass.email, password : pass.password}, {where : { email : pass.email}})
                res.redirect("/login")
            }
        }
        else{
            req.session.err = "E-mail is not registered"
            res.redirect("/changePassword")
        }
    });
}

const shop = (req,res,next) => {
    req.session.err = ''
    if (req.session.User) {
        res.render('shopping-cart');
    } else {
        req.session.err = 'You Haven\'t Login Yet !';
        res.redirect("/login")
    }
}

const AuthProfile = (req,res,next) => {
    const profiledata = {
        image : req.file,
        name : req.body.name,
        DayOfBirth : req.body.DayOfBirth,
        gender : req.body.gender,
        address : req.body.address,
        phone : req.body.phone
    }

    let msg = req.session.err||"";
    req.session.err = "";
    if(profiledata.gender != "Male" && profiledata.gender != "Female"){
        req.session.err = "Please input gender correctly (Male or Female)"
        res.redirect("/profile")
    }
    else if(profiledata.name == ""){
        req.session.err = "Username cannot be empty"
        res.redirect("/profile")
    }
    else if(profiledata.image === undefined){
        req.session.err = "Success!"
        User.update({
            name : profiledata.name, 
            DayOfBirth: profiledata.DayOfBirth ,
            gender: profiledata.gender, 
            address: profiledata.address, 
            phone:profiledata.phone
        },
            {
                where : 
                {
                    email : req.session.User.email
                }
            })
            .then(()=>{
                res.redirect("/profile")
        })
    }
    else{
        req.session.err = "Success!"
        User.update({name : profiledata.name, 
            DayOfBirth: profiledata.DayOfBirth ,
            gender: profiledata.gender, 
            address: profiledata.address, 
            phone:profiledata.phone,
        image : req.file.path},{where : {email : req.session.User.email}}).then(() =>{
            res.redirect("/profile");
        })
    }
}

const storage = multer.diskStorage({
    destination: './public/assets/images/Profile/',
    filename: (req, file,cb) => {
        cb(null, file.fieldname + "-" + Date.now() + path.extname(file.originalname));
    }
})
const Upload = multer({
    storage: storage,
    limits : {fileSize : "10000"},
    fileFilter: (req,file,cb) => {
        const fileTypes = /jpeg|jpg|png/
        const mimeType = fileTypes.test(file.mimetype)
        const extname = fileTypes.test(path.extname(file.originalname))
    
        if(mimeType && extname) {
            return cb(null,true)
        }
        cb("Give proper files formate to upload")
    }
}).single('image');




export default {login,logout,auth, Profile, register, changePass, authRegister, authPasword, AuthProfile, Upload, shop, pay, contact,review}