var multer = require('multer');


exports.login = function(req, res) {
    var message ='';
    var sess = req.session;
    var md5 = require('md5');

    if(req.method == 'POST'){
        var post = req.body;
        //2. tangkap nilai atribut nama dari form input username dan password
        var name = post.username;
        var pass = md5(post.password);
        req.getConnection(function(err, connect){
            var sql = "SELECT id_admin, username, name, admin_level FROM admin_tbl WHERE username='"+name+"' AND password='"+pass+"'";
            var query = connect.query (sql, function(err, results){
                if (results.length) {
                    //jika hasil query ada, daftarkan session dan alihkan ke halaman home!
                    req.session.adminId = results[0].id_admin;
                    req.session.admin = results[0];
                    console.log(results[0].id_admin);
                    res.redirect('./home');
                } else {
                    //jik hasil query tidak ada, kirimkan error message dan tampilkan layout form login!
                    message = 'Username or password incorrect! Please try again.';
                    res.render('./admin/index', {
                    message : message,
                    
                    });
                }
            });
        });
        //jika route modulnya adalah POST, lakukan proses autentikasi login
    } else {
        // jika route methodnya bukan POST, tampilkan layout form login
        //1.tangkap nilai dari atribut pada body
        res.render('./admin/index', {
            message : message
            
            });

    //3.   
 }
}


exports.home = function(req, res) {
    var admin = req.session.admin;
    var adminId =  req.session.adminId;
    console.log('id_admin=' + adminId);

    if (adminId == null) {
        res.redirect('/express/admin/login');
        return;
    }


    req.getConnection(function(err, connect){
    var sql = "SELECT * FROM news_tbl ORDER BY createdate DESC";

    var query = connect.query(sql, function(err, results){
        //jika koreksi dan query berhasil tampilkan home admin
        
        res.render('./admin/home', {
            pathname: 'home',
            data : results
    });  
    });
});
} 



exports.data_produk = function(req, res) {
    var admin = req.session.admin;
    var adminId =  req.session.adminId;
    console.log('id_admin=' + adminId);

    if (adminId == null) {
        res.redirect('/express/admin/login');
        return;
    }

    req.getConnection(function(err, connect){
        var sql = "SELECT * FROM product_tbl";
        var query = connect.query(sql, function(err, results){
            //jika koreksi dan query berhasil tampilkan home admin
            if(err){
                console.log("err :", err);
            }
            console.log(results);
            res.render('./admin/home', 
            {   pathname: 'data_produk',
                data: results
            });  
        });
    });
}



exports.data_brand = function(req, res) {
    var admin = req.session.admin;
    var adminId =  req.session.adminId;
    console.log('id_admin=' + adminId);

    if (adminId == null) {
        res.redirect('/express/admin/login');
        return;
    }

    req.getConnection(function(err, connect){
        var sql = "SELECT * FROM brand_tbl";
        var query = connect.query(sql, function(err, results){
            //jika koreksi dan query berhasil tampilkan home admin
            if(err){
                console.log("err :", err);
            }
            console.log(results);
            res.render('./admin/home', 
            {   pathname: 'data_brand',
                data: results
            });  
        });
    });
}


exports.data_user = function(req, res) {
    var admin = req.session.admin;
    var adminId =  req.session.adminId;
    console.log('id_admin=' + adminId);

    if (adminId == null) {
        res.redirect('/express/admin/login');
        return;
    }

    req.getConnection(function(err, connect){
        var sql = "SELECT * FROM user_tbl";
        var query = connect.query(sql, function(err, results){
            //jika koreksi dan query berhasil tampilkan home admin
            if(err){
                console.log("err :", err);
            }
            console.log(results);
            res.render('./admin/home', 
            {   pathname: 'data_user',
                data: results
            });  
        });
    });
}



exports.add_produk = function(req, res) {
    res.render('./admin/home', {
        pathname: 'add_produk'
        
    });
} 

exports.add_brand = function(req, res) {
    res.render('./admin/home', {
        pathname: 'add_brand'
        
    });
} 

exports.details = function(req, res) {
    res.render('./admin/home', {
        pathname: 'details'

    });
}

exports.process_add_produk = function(req, res) { 
    var storage = multer.diskStorage({     
        destination: '/public/img/',     
        filename: function(req, file, callback) {         
            callback(null, file.originalname);     
        }  
    });
        var upload = multer({ storage: storage }).single('image');
        var date = new Date(Date.now());
        upload(req, res, function(err) {
            if (err) {
                return res.end('Error uploading image!');
            } 
    
        console.log(req.file);     
        console.log(req.body); 
        

        req.getConnection(function(err, connect) {     // tangkap nilai atau value dr body (atribut name)     
            var post = {         
                name_product: req.body.namaproduk,         
                kategori: req.body.kategori,         
                gambar_product: req.file.filename,         
                price: req.body.harganormal,
                discount: req.body.hargadiskon     
            } 
        
            console.log(post); // untuk menampilkan data post di console 
        
            var sql = "INSERT INTO product_tbl SET ?"; 
        
            var query = connect.query(sql, post, function(err, results) {         
                if (err) {             
                    console.log('Error input news: %s', err);
                }
                res.redirect('/express/admin/data_produk');
            });
        });
    });
}

//Membuat objek dari route app.post('/express/admin/add_brand', adminku.process_add_brand); di index
exports.process_add_brand = function(req, res) { 
    var storage = multer.diskStorage({     
        destination: '/public/img/',     
        filename: function(req, file, callback) {         
            callback(null, file.originalname);     
        }  
    });
        var upload = multer({ storage: storage }).single('image');
        var date = new Date(Date.now());
        upload(req, res, function(err) {
            if (err) {
                return res.end('Error uploading image!');
            } 
    
        console.log(req.file);     
        console.log(req.body); 
        

        req.getConnection(function(err, connect) {     // tangkap nilai atau value dr body (atribut name)     
            var post = {         
                name: req.body.namabrand,         
                date_input: req.body.date,      
            } 
        
            console.log(post); // untuk menampilkan data post di console 
        
            var sql = "INSERT INTO brand_tbl SET ?"; 
        
            var query = connect.query(sql, post, function(err, results) {         
                if (err) {             
                    console.log('Error input news: %s', err);
                }
                res.redirect('/express/admin/data_brand');//mengembalikan halaman setelah di save
            });
        });
    });
}
//Membuat objek dari route app.post('/express/admin/add_brand', adminku.process_add_brand); di index
exports.edit_produk = function(req, res) {
    var id_product = req.params.id_product;
    
    req.getConnection(function(err, connect) {     
        var sql = "SELECT * FROM product_tbl WHERE id_product=?"; 
        var query = connect.query(sql, id_product, function(err, results) {         
            if (err) {             
                console.log('Error show news: %s', err);         } 
 
        res.render('./admin/home', {             
            id_product: id_product,             
            pathname: 'edit_produk',
            data: results
        });
    });
});
} 


exports.process_edit_produk = function(req, res) { 
    var storage = multer.diskStorage({     
        destination: '/public/img/',     
        filename: function(req, file, callback) {         
            callback(null, file.originalname);     
        }  
    });
        var upload = multer({ storage: storage }).single('image');
        var date = new Date(Date.now());

        upload(req, res, function(err) {
            if (err) {
                var image = req.body.image_old;
                console.log('Error uploading image!');
            } else if (req.file == undefined) {
                var image = req.body.image_old;
            }else {
                var image = req.file.filename;
            }
    
        console.log(req.file);     
        console.log(req.body); 
        

        req.getConnection(function(err, connect) {     // tangkap nilai atau value dr body (atribut name)     
            var post = {
                name_product: req.body.namaproduk,         
                kategori: req.body.kategori,         
                gambar_product: image,         
                price: req.body.harganormal,
                discount: req.body.hargadiskon     
            } 
        
            console.log(post); // untuk menampilkan data post di console 
        
            var sql = "UPDATE product_tbl SET ? WHERE id_product=?"; 
        
            var query = connect.query(sql, [post, req.body.id_product], function(err, results) {         
                if (err) {             
                    console.log('Error input news: %s', err);
                }
                res.redirect('/express/admin/home');//mengembalikan halaman setelah di save
            });
        });
    });
}

exports.delete_produk = function(req, res) {
    var id_product = req.params.id_product;
    
    req.getConnection(function(err, connect) {     
        var sql = "DELETE FROM product_tbl WHERE id_product=?"; 
        var query = connect.query(sql, id_product, function(err, results) {         
            if (err) {             
                console.log("Error delete table: %s", err);
            }
                res.redirect('/express/admin/data_produk');
                //mengembalikan halaman setelah di save
        });
    });
}        
 


exports.edit_brand = function(req, res) {
    var brand_id = req.params.brand_id;
    
    req.getConnection(function(err, connect) {     
        var sql = "SELECT * FROM brand_tbl WHERE brand_id=?"; 
        var query = connect.query(sql, brand_id, function(err, results) {         
            if (err) {             
                console.log('Error show news: %s', err);         } 
 
        res.render('./admin/home', {             
            brand_id: brand_id,             
            pathname: 'edit_brand',
            data: results
        });
    });
});
} 



exports.process_edit_brand = function(req, res) { 
    var storage = multer.diskStorage({    
        destination: '/public/img/',     
        filename: function(req, file, callback) {         
            callback(null, file.originalname);     
        }  
    });
        var upload = multer({ storage: storage }).single('image');
        var date = new Date(Date.now());

        upload(req, res, function(err) {
            if (err) {
                var image = req.body.image_old;
                console.log('Error uploading image!');
            } else if (req.file == undefined) {
                var image = req.body.image_old;
            }else {
                var image = req.file.filename;
            }
    
        console.log(req.file);     
        console.log(req.body); 
        

        req.getConnection(function(err, connect) {     // tangkap nilai atau value dr body (atribut name)     
            var post = {
                name: req.body.namabrand,         
                date_input: req.body.date
            } 
        
            console.log(post); // untuk menampilkan data post di console 
        
            var sql = "UPDATE brand_tbl SET ? WHERE brand_id=?"; 
        
            var query = connect.query(sql, [post, req.body.brand_id], function(err, results) {         
                if (err) {             
                    console.log('Error input news: %s', err);
                }
                res.redirect('/express/admin/home');//mengembalikan halaman setelah di save
            });
        });
    });
}