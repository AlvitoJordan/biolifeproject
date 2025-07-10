import express from "express";
import Product from "./models/Product.js";
import sequelize from "sequelize";
import Categories from "./models/Categories.js"
import user_controller from "./controllers/user.js"
import session from "express-session";
import model from "./models/index.js"
import Ulasan from "./models/ulasan.js";
import User from "./models/User.js";
import Wishlist from "./models/Wishlist.js";
import Cart from "./models/Cart.js";
import Payment from "./models/Payment.js";

const op = sequelize.Op

const app = express();
app.use(express.static('public'))
app.use('/public',express.static('./public'))

const hostname = '127.0.0.1';
const port = 3001;

app.use(express.json());
app.use(express.urlencoded({extended : false}));
app.use(session({
    secret:"ini adalah kode secret###",
    resave: false,
    saveUninitialized : true,
    rolling : true,
    cookie: {maxAge:60 * 60* 1000}
}));

app.set('view engine', 'ejs');

//Halaman Utama
app.get('/', async(req, res) => {
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('home',{Produk : results[0],Kategori : results[1], User:req.session.User||""})
    })
})

//Authentikasi
app.get('/login', user_controller.login);
app.get('/logout',user_controller.logout);
app.post('/login',user_controller.auth);
app.get('/register',user_controller.register);
app.post('/register',user_controller.authRegister);
app.get('/changePassword',user_controller.changePass);
app.post('/changePassword',user_controller.authPasword);

app.get('/product-page',async(req,res) =>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('product-page',{Produk : results[0],Kategori : results[1] , User:req.session.User||"", Pselect : "all" , PselectedName : "Price", Sselect : "St0", SselectedName : "Stock", Oselect : "menu_order", OselectedName : "Default sorting"})
    })
})

//Get Profile
app.get('/profile',user_controller.Profile)
app.post('/profile',user_controller.Upload,user_controller.AuthProfile)


// Product Detail & Related Product
app.get('/product-page/detail/:id', async(req, res) => {
    const Produk = await Product.findOne({ where: { productId: req.params.id } })
    const RelProduct = await Product.findAll({ limit: 5 })
    const Kategori = await Categories.findAll()
    const Ulasann = await Ulasan.findAll({ where: { ProductProductId: req.params.id } })
    Promise.all([Produk, RelProduct, Kategori,Ulasann]).then(results => {
        res.render('single-product-external', { Produk: results[0], RelProduct: results[1], Kategori: results[2],Ulasann:results[3], User: req.session.User || "" })
    })
})

//Review Product
app.post("/product-page/detail/:id", user_controller.review)

//Get Category
app.get('/category/:id', async(req,res)=>{
    const Produk =  await Product.findAll({where : { CategoryId : req.params.id}})
    const Kategori = await Categories.findAll()
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('product-page',{Produk : results[0],Kategori : results[1] , User:req.session.User||"",Pselect : "Price" , PselectedName : "All", Sselect : "St0", SselectedName : "Stock", Oselect : "menu_order", OselectedName : "Default sorting"})
    })
})

//Search
app.get('/search/:name', async (req,res)=>{
    const Produk =  await Product.findAll({where: { name: { [op.like]: '%'+req.params.name+ '%' }}})
    const Kategori = await Categories.findAll()
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('product-page',{Produk : results[0],Kategori : results[1] , User:req.session.User||"",Pselect : "Price" , PselectedName : "All", Sselect : "St0", SselectedName : "Stock" , Oselect : "menu_order", OselectedName : "Default sorting"})
    })
})

//Filter & Sort
app.get('/filter',async(req,res)=>{
    let Price = req.query.price
    let Stock = req.query.Stock
    let Orderby = req.query.orderby
    let options = {where : {}, order: []}
    let PriceselName = "";
    let StockselName = "";
    let SortselName = "";
    if(Price == "class-1st"){
        options.where.price = {[op.lte] : 10000}
        PriceselName = "Less than Rp.10.000,00"
        if(StockselName == ""){
            StockselName = "Stock";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }
    else if(Price == "class-2nd"){
        options.where.price = {[op.between] : [10000, 15000]}
        PriceselName = "Rp.10.000,00 - Rp.15.000,00"
        if(StockselName == ""){
            StockselName = "Stock";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }  
    else if(Price == "class-3rd"){
        options.where.price = {[op.between] : [15000, 20000]}
        PriceselName = "Rp.15.000,00 - Rp.20.000,00"
        if(StockselName == ""){
            StockselName = "Stock";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }
    else if(Price == "class-4th"){
        options.where.price = {[op.between] : [20000, 30000]}
        PriceselName = "Rp.20.000,00 - Rp.30.000,00"
        if(StockselName == ""){
            StockselName = "Stock";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }
    else if(Price == "class-5th"){
        options.where.price = {[op.between] : [30000, 50000]}
        PriceselName = "Rp.30.000,00 - Rp.50.000,00"
        if(StockselName == ""){
            StockselName = "Stock";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }
    else if(Price == "class-6th"){
        options.where.price = {[op.between] : [50000, 100000]}
        PriceselName = "Rp.50.000,00 - Rp.100.000,00"
        if(StockselName == ""){
            StockselName = "Stock";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }
    else if(Price == "class-7th"){
        options.where.price = {[op.gte] : 100000}
        PriceselName = "More than Rp.100.000,00"
        if(StockselName == ""){
            StockselName = "Stock";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }

    if(Stock == "st1"){
        options.where.stock= {[op.lte] : 5}
        StockselName = "Less than 5"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }

    else if(Stock == "st2"){
        options.where.stock= {[op.between] : [6,10]}
        StockselName = "6 - 10"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }

    else if(Stock == "st3"){
        options.where.stock= {[op.between] : [11,20]}
        StockselName = "11 - 20"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }

    else if(Stock == "st4"){
        options.where.stock= {[op.between] : [21,50]}
        StockselName = "21 - 50"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }

    else if(Stock == "st5"){
        options.where.stock= {[op.between] : [51,100]}
        StockselName = "51 - 100"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }
    else if(Stock == "st6"){
        options.where.stock= {[op.between] : [21,50]}
        StockselName = "More than 100"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(SortselName == ""){
            SortselName = "Default Sorting"
        }
    }

    if(Orderby == "date"){
        options.order.push(['updatedAt','DESC'])
        SortselName = "Newness"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(StockselName == ""){
            StockselName = "Stock"
        }
    }
    
    else if(Orderby == "asc"){
        options.order.push(['price','ASC'])
        SortselName = "Low to High"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(StockselName == ""){
            StockselName = "Stock"
        }
    }

    else if(Orderby =="desc"){
        options.order.push(['price','DESC'])
        SortselName = "High to Low"
        if(PriceselName == ""){
            PriceselName = "Price";
        }
        if(StockselName == ""){
            StockselName = "Stock"
        }
    }

    const Produk =  await Product.findAll(options)
    const Kategori = await Categories.findAll()
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('product-page',{Produk : results[0],Kategori : results[1] , User:req.session.User||"" , Pselect : Price , PselectedName : PriceselName, Sselect : Stock, SselectedName : StockselName, Oselect : Orderby , OselectedName : SortselName})
    })
})

//Pergi ke halaman Contact
app.get('/contactUs',async(req,res) =>{
    const Produk =  await Product.findAll({where: { name: { [op.like]: '%'+req.params.name+ '%' }}})
    const Kategori = await Categories.findAll()
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('contactUs',{Produk : results[0],Kategori : results[1] , User:req.session.User||"",Pselect : "Price" , PselectedName : "All", Sselect : "St0", SselectedName : "Stock" , Oselect : "menu_order", OselectedName : "Default sorting"})
    })
})

//Mengirim Kontak ke tim kami
app.post("/api/contactus", user_controller.contact)

//Pergi Kehalaman payment
app.get('/payment', async(req,res)=>{
    let msg = req.session.err||"";
    req.session.err = "";

    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    try{
        const keranjang = await Cart.findAll({include:[{model:Product},{model:User, where : {Id : req.session.User.Id}}]}   )
        Promise.all([Produk,Kategori,keranjang]).then(results =>{
            res.render('payment',{Produk : results[0],Kategori : results[1], User:req.session.User||"",keranjang: results   [2],message : msg})
        })
    }
    catch{
        res.redirect("/login")
    }
})

//Pergi kehalaman Code Refferal
app.get('/codeReferral', async(req,res)=>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('codeReferral',{Produk : results[0],Kategori : results[1], User:req.session.User||"",Wish: results[2]})
    })
})

//Wishlist
app.post('/wishlist/:id',async(req,res) =>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    try{
        await Wishlist.findOne({where: {UserId : req.session.User.Id, ProductProductId : req.params.id}}).then((results) => {
            if(results === null){
                Wishlist.create({UserId : req.session.User.Id, ProductProductId : req.params.id})
            }
            else {
                Wishlist.destroy({where : {UserId : req.session.User.Id, ProductProductId : req.params.id}})
            }
            res.redirect("/")          
        })
    }
    catch{
        res.redirect("/login")
    }
})

//Menlihat semua produk yang telah diwish
app.get("/wishlist", async(req,res)=>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    try{
    const Wish = await Wishlist.findAll({include:[{model:Product},{model:User, where : {Id : req.session.User.Id}}]})   
    Promise.all([Produk,Kategori,Wish]).then(results =>{
        res.render('wishlist',{Produk : results[0],Kategori : results[1], User:req.session.User||"",Wish: results[2]})
    })
    }
    catch{
        res.redirect("/login")
    }
})

//Menghapus 1 produk Wishlist
app.delete("/wishlist/:id",(req,res)=>{
    Wishlist.destroy({where : {Id : req.params.id}}).then(()=>{
        res.redirect("/wishlist")
    })
})

//Menghapus semua Wishlist
app.delete("/wish/delete",async(req,res)=>{
    await Wishlist.destroy({where : {UserId : req.session.User.Id}}).then(()=>{
        res.redirect("/wishlist")
    })
})

//Memasukkan Semua Wishlist kedalam Cart
app.post("/cart",async(req,res)=>{
    const x = req.body
    for(let i=0; i < x.length; i++){
        const Wish = await Wishlist.count({where: { UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}})
        const keranjang = await Cart.count({where: { UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}})
        if(keranjang == Wish){
            await Cart.findOne({where: { UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}}).then((async results =>{
                await Cart.update({Qty : results.Qty + x[i]['Qty'],Total : x[i]['Price']*(results.Qty + x[i]['Qty'])},{where : {UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}})
            }))    
        }
        else{
            await Cart.create({UserId : x[i]['UserId'], ProductProductId : x[i]['ProductProductId'],Qty : x[i]['Qty'],Total : x[i]['Price']})
        }
    }
    res.redirect("/wishlist")
})

//Memasukkan 1 produk Wishlist kedalam Cart
app.post("/gotocart/:id",async(req,res)=>{
        const Wish = await Wishlist.count({where: { UserId : req.session.User.Id, ProductProductId : req.body.ProductProductId}})
        const keranjang = await Cart.count({where: { UserId : req.session.User.Id, ProductProductId : req.body.ProductProductId}})
        if(keranjang == Wish){
            await Cart.findOne({where: { UserId : req.session.User.Id, ProductProductId :req.body.ProductProductId}}).then((results =>{
                Cart.update({Qty : results.Qty + req.body.Qty, Total : req.body.Price*(results.Qty + req.body.Qty)},{where : {UserId : req.session.User.Id, ProductProductId : req.body.ProductProductId}})
            }))    
        }
        else{
            await Cart.create({UserId : req.session.User.Id, ProductProductId : req.body.ProductProductId,Qty : 1, Total : req.body.Price})
        }
    res.redirect("/wishlist")
})

//Melihat semua cart berdasarkan ID User
app.get("/shopcart", async(req,res)=>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    try {
        const keranjang = await Cart.findAll({include:[{model:Product},{model:User, where : {Id : req.session.User.Id}}]}   )   
        
        Promise.all([Produk,Kategori,keranjang]).then(results =>{
            res.render('shopping-cart',{Produk : results[0],Kategori : results[1], User:req.session.User||"",keranjang:     results[2]})
        })
    }
    catch{
        res.redirect("/login")
    }
})

//Delete semua produk yang ada dikeranjang
app.delete("/shopcart/delete",async(req,res)=>{
    await Cart.destroy({where : { UserId : req.session.User.Id}}).then(()=>{
        res.redirect("/shopcart")
    })
})
//Delete Cart
app.delete("/shopcart/:id",(req,res)=>{
    Cart.destroy({where : {Id : req.params.id}}).then(()=>{
        res.redirect("/shopcart")
    })
})
//Update Cart
app.put("/shopcart/update",async(req,res)=>{
    const x = req.body
    for(let i=0; i < x.length; i++){
        await Cart.update({Qty : x[i]['Qty'],Total : x[i]['Price']*x[i]['Qty']},{where : {UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}})
    }
    res.redirect("/shopcart")
})

//Mengirimkan Payment ke History pembayaran
app.post("/payment/success",async(req,res)=>{
    const x = req.body
    req.session.err = "";
    for(let i=0; i < x.length; i++){
        if(x[i]['Phone'] == ""){
            req.session.err = "Please input Phone Number"
            res.redirect("/payment")
        }
        else if(x[i]["Address"] == ""){
            req.session.err = "Please input Address"
            res.redirect("/payment")
        }
        else{
            await Payment.create({UserId : x[i]['UserId'], ProductProductId : x[i]['ProductProductId'],qty : x[i]['Qty'],subtotal: x[i]['Subtotal'], code: x[i]['Code'], method : x[i]['Method'], OrderId : x[i]['OrderId'],totalProduct : x[i]['totalProduct']})
        }
    }
    await Cart.destroy({where : { UserId : req.session.User.Id}})
    res.redirect("/")
})

//Melihat riwayat transaksi
app.get("/history",async(req,res)=>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    try{
        const Pay = await Payment.findAll({include:[{model:Product},{model:User, where : {Id : req.session.User.Id}}],  order : [['createdAt','DESC']]})

        Promise.all([Produk,Kategori,Pay]).then(results =>{
            res.render('history',{Produk : results[0],Kategori : results[1], User:req.session.User||"",Pay: results[2]})
        })
    }
    catch{
        res.redirect("/login")
    }
})

//Melihat Order Detail
app.get("/order/detail/:id",async(req,res)=>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    try{
        const Pay = await Payment.findAll({where : {OrderId : req.params.id},include:[{model:Product},{model:User, where    : {Id : req.session.User.Id}}]})
        Promise.all([Produk,Kategori,Pay]).then(results =>{
            res.render('OrderDetail',{Produk : results[0],Kategori : results[1], User:req.session.User||"",Pay: results[2]})
        })
    }
    catch{
        res.redirect("/login")
}
})

//Upload 1 produk ke cart tidak melalui wishlist
app.post("/addcart/:id" ,async(req,res)=>{
    const keranjang = await Cart.count({where: { UserId : req.session.User.Id, ProductProductId : req.params.id}})
    if(keranjang > 0){
        await Cart.findOne({where: { UserId : req.session.User.Id, ProductProductId :req.params.id}}).then((results =>{
            Cart.update({Qty : results.Qty + req.body.Qty, Total : req.body.Price*(results.Qty + req.body.Qty)},{where : {UserId : req.session.User.Id, ProductProductId : req.params.id}})
        }))    
    }
    else{
        await Cart.create({UserId : req.session.User.Id, ProductProductId : req.params.id,Qty : req.body.Qty, Total : req.body.Price})
    }
    res.redirect("/wishlist")
})

//Upload banyak produk sekaligus tidak melalui wishlist
app.post("/addcart",async(req,res)=>{
    const x = req.body
    for(let i=0; i < x.length; i++){
        const keranjang = await Cart.count({where: { UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}})
        if(keranjang > 0){
            await Cart.findOne({where: { UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}}).then((async results =>{
                await Cart.update({Qty : results.Qty + x[i]['Qty'],Total : x[i]['Price']*(results.Qty + x[i]['Qty'])},{where : {UserId : req.session.User.Id, ProductProductId : x[i]['ProductProductId']}})
            }))    
        }
        else{
            await Cart.create({UserId : x[i]['UserId'], ProductProductId : x[i]['ProductProductId'],Qty : x[i]['Qty'],Total : x[i]['Price']})
        }
    }
    res.redirect("/shopcart")
})

app.get("/404", async(req,res)=>{
    const Produk =  await Product.findAll()
    const Kategori = await Categories.findAll()
    Promise.all([Produk,Kategori]).then(results =>{
        res.render('404',{Produk : results[0],Kategori : results[1], User:req.session.User||""})
    })
})

//Jika halaman tidak ditemukan maka akan ke 404 Page
app.get('*',async(req,res)=>{
    res.redirect("/404")
})

app.listen(port, () => {
    console.log(`Server running at ${hostname}:${port}`);
})
