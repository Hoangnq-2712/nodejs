const path = require('path');
const express = require('express');
const ejs = require('ejs');
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');
const app = express();

//the sessions var
const session = require('express-session');
//uuid for secret var of session
const { v4: uuidv4 } = require('uuid');

const mysql = require('mysql');
const connection=mysql.createConnection({
    host:'mysql5037.site4now.net',
    user:'a7c75f_haoit22',
    password:'haoit221220@',
    database:'db_a7c75f_haoit22'
});

connection.connect(function(error){
    if(!!error) console.log(error);
    else console.log('Database Connected!');
}); 


//set views file
app.set('views',path.join(__dirname,'views'));

//su dụng tài nguyên tĩnh
app.use(express.static(__dirname + '/views/public'));
// app.use(express.static( "images" ) );
// app.use(express.static( "upload" ) );

//set view engine
app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// SHOW
app.get('/',(req, res) => {
    let sql = "SELECT articles.id,articles.name,articles.image,articles.summary,articles.content,articles.created_at,users.author FROM `articles`,`users` WHERE articles.user_id=users.u_id";
    let query = connection.query(sql, (err, rows) => {
        if(err) throw err;
        res.render('\index', {
            title : 'Home',
            articles : rows
        });
    });
});




app.get('/detail/:articleId',(req, res) => {
    const articleId = req.params.articleId;
    let sql = `Select articles.id,articles.name,articles.image,articles.summary,articles.content,articles.created_at,users.author from articles,users where articles.id = ${articleId} and articles.user_id=users.u_id`;
    let query = connection.query(sql,(err, result) => {
        if(err) throw err;
        res.render('new_detail', {
            title : 'CRUD Operation using NodeJS / ExpressJS / MySQL',
            article : result[0]
        });
    });
});


//------------------------------------------
app.get('/giai-dau/:cateId',(req, res) => {
    const cateId = req.params.cateId;
    let sql = `Select articles.id,articles.name,articles.image,articles.summary,articles.content,articles.created_at,users.author from articles,users where articles.category_id = ${cateId} and articles.user_id=users.u_id`;
    let query = connection.query(sql,(err, rows) => {
        if(err) throw err;
        res.render('category', {
            title : 'Giai đấu',
            cate : rows
        });
    });
});


//---------------------
app.post('/search',(req, res) => {
    //res.render('search');
    const search = req.body.search;
    let sql = `SELECT articles.id,articles.name,articles.image,articles.summary,articles.content,articles.created_at,users.author FROM articles,users WHERE articles.user_id=users.u_id and (summary LIKE '%${search}%' OR name LIKE '%${search}%')`;
    let query = connection.query(sql,(err, rows) => {
        if( err) throw err;
        if(rows==0){
            res.render('search', {title : 'Kết quả tìm kiếm',search : rows,key: `không tim thấy kết quả phù hợp với từ khóa :${search}` });
        }
        else{
            res.render('search', {title : 'Kết quả tìm kiếm',search : rows,key: `kết quả phù hợp với từ khóa :${search}`});
        }
        
    });
});

//--------------------------------------mail:contact

let transporter = nodemailer.createTransport({
    host: 'smtp.googlemail.com',
    port: 465,
    auth: {
    user: 'haoit2212@gmail.com',
    pass: 'haoit221220@'
    },
    tls: {
        rejectUnauthorized: false
    }
});

app.get('/contact',(req, res) => {
    res.render('contact');
});

app.post('/sendmail',(req, res) => {
    let name = req.body.name;
    let to_email = req.body.to_email;
    let mail_subject = req.body.mail_subject;
    let message = req.body.message;
    let attach = req.body.attach;


    let messageOptions = {
        from: `${name}<tranvanhao221220@gmail.com>`,
        to: to_email,
        subject: mail_subject,
        // text: message
        html: message
    };

    if(attach){
        messageOptions = {...messageOptions, attachments: [{
                filename: 'mail.jpg',
                path: './mail.jpg'
            }]
        };
    }


    transporter.sendMail(messageOptions, (error, info) => {
        if (error) {
            return console.log(error);
        }
        console.log('Message %s sent: %s', info.messageId, info.response);
        res.redirect('/');
    });
});
//------------------------------------------
app.get('/login',(req, res) => {
    res.render('login');
});

app.use(session({
    secret: uuidv4(),
    resave: false,
    saveUninitialized: true
}))

const hao = {
    email: 'oussama@gmail.com',
    password: 'ad123'
};
var logout = 'you are out';

app.post('/login', function (req, res) {
    // console.log(req.session.hao2)
    // if (req.body.email == hao.email && req.body.password == hao.password) {
    //     req.session.hao2 = req.body.email;
    //     console.log('success');
    //     res.redirect('/dashboard');
    //     //res.render('dashboard', { title: 'your dashboard', email: req.body.email });
    //     //res.end('LOGIC DONE!!')
    // } else {
    //     console.log('Wrong Passowrd');
    //     res.end('invalid');
    // }

    console.log(req.session.hao2)
    var username = req.body.email;
    var password = req.body.password;

        // let sql = `SELECT * FROM users where username = '${email}' and password = '${password}'`;
        // let query = connection.query(sql, (err, rows) => {
        //     if(err) throw err;
        //     req.session.hao2 = req.body.email;
        //     console.log('success');
        //     res.redirect('/dashboard');
        // });

        if (username && password) {
            connection.query(
                "SELECT * FROM users WHERE username = ? AND password = ?",
                [username, password],
                function (err, result, fields) {
                    if (result.length > 0) {
                        req.session.loggedin = true;
                        //req.session.username = username;
                        req.session.hao2 = req.body.email;
                        res.redirect('/dashboard');
                    } else {
                        res.send('Incorrent Username and/or Password');
                    }
                    res.end();
                }
            );
        } else {
            res.send("Please enter Username and Password");
            res.end();
        }

});

app.get('/dashboard', function (req, res) {
    if (req.session.hao2) {
        const key = req.session.hao2;
        let sql = `Select * from users where username = '${key}'`;
        let query = connection.query(sql,(err, result) => {
            if(err) throw err;
            req.session.log=result[0];
            res.render('admin/dashbroad', {
                title : 'Home',
                user : req.session.log,
                email: req.session.hao2
            });
        });
        //res.render('admin/dashbroad', { title: 'Home', email: req.session.hao2 });
    } else {
        res.end('invalide')
    }
})
app.get('/signout', function (req, res) {
    req.session.destroy(function (err) {
        if (err) {
            res.send('error');
        } else {
            res.redirect('/');
        }
    });
})

//------------------------------------------------post


app.get('/post',(req, res) => {

    let sql = "SELECT * FROM articles";
    let query = connection.query(sql, (err, rows) => {
        if(err) throw err;
        res.render('admin/post_index', {
            title : 'Bài viết',
            articles : rows,
            user : req.session.log
        });
    });
});

app.get('/post/add',(req, res) => {
    //SELECT DISTINCT  categories.id, categories.name,users.u_id,users.author FROM categories,users,articles WHERE categories.id=articles.category_id and articles.user_id=users.u_id;
    
    let sql = `SELECT DISTINCT users.u_id,users.author FROM users`;
    let query = connection.query(sql,(err, rows) => {
        if(err) throw err;
        res.render('admin/post_add', {
            title : 'Thêm bài viết',
            add : rows,
            user : req.session.log
        });
    });
    // res.render('admin/post_add', {
    //     title : 'Thêm bài viết'
    // });
});


 
app.post('/save',(req, res) => { 
    
    let data = {name: req.body.name, category_id: req.body.category, user_id: req.body.author, image: req.body.image, summary: req.body.summary, content: req.body.content};
    let sql = "INSERT INTO articles SET ?";
    let query = connection.query(sql, data,(err, results) => {
      if(err) throw err;
      res.redirect('/post');
    });
});

app.get('/post/edit/:articleId',(req, res) => {
    const articleId = req.params.articleId;
    let sql = `Select * from articles where id = ${articleId}`;
    let query = connection.query(sql,(err, result) => {
        if(err) throw err;
        res.render('admin/post_edit', {
            title : 'Chi tiết bài viết',
            article : result[0],
            user : req.session.log
        });
    });
});

app.post('/update',(req, res) => {
    const articleId = req.body.id;
    let sql = "update articles SET name='"+req.body.name+"',  image='"+req.body.image+"',  summary='"+req.body.summary+"',  content='"+req.body.content+"' where id ="+articleId;
    let query = connection.query(sql,(err, results) => {
      if(err) throw err;
      res.redirect('/post');
    });
});

app.get('/post/delete/:articleId',(req, res) => {
    const articleId = req.params.articleId;
    let sql = `DELETE from articles where id = ${articleId}`;
    let query = connection.query(sql,(err, result) => {
        if(err) throw err;
        res.redirect('/post');
    });
});
//--------------------search

app.post('/admin/search',(req, res) => {
    const search = req.body.search;
    let sql = `Select * from articles where summary LIKE '%${search}%' OR name LIKE '%${search}%'`;
    let query = connection.query(sql,(err, rows) => {
        //if( err)
         //   throw err;
            //res.render('admin/search', {title : 'Kết quả tìm kiếm',search : result[0],user : req.session.log});
            //res.render('admin/error', { title: 'Từ khóa  không tìm thấy ',user : req.session.log});
        //}else{
            //res.render('admin/error', { title: 'Từ khóa  không tìm thấy ',user : req.session.log});
         //   res.render('admin/search', {title : 'Kết quả tìm kiếm',search : rows,user : req.session.log});
        //}
        if( err) throw err;
        if(rows==0){
            res.render('admin/error', { title: 'Từ khóa  không tìm thấy ',search : rows,user : req.session.log});
        }
        else{
            res.render('admin/search', {title : 'Kết quả tìm kiếm',search : rows,user : req.session.log});
        }
    });
});



//============================================================
app.get('/admin-category',(req, res) => {
    //res.send('CRUD Operation using NodeJS / ExpressJS / MySQL');
    let sql = "SELECT * FROM categories";
    let query = connection.query(sql, (err, rows) => {
        if(err) throw err;
        res.render('admin/category_index', {
            title : 'Danh Mục Bóng đá',
            categories : rows,
            user : req.session.log
        });
    });
    //res.render('post_index');
});
app.get('/category/add',(req, res) => {
    res.render('admin/category_add', {
        title : 'Thêm danh mục',
        user : req.session.log
    });
});
app.post('/category-save',(req, res) => { 
    let data = {name: req.body.name, position: req.body.position};
    let sql = "INSERT INTO categories SET ?";
    let query = connection.query(sql, data,(err, results) => {
      if(err) throw err;
      res.redirect('/admin-category');
    });
});
app.get('/category/delete/:categoryId',(req, res) => {
    const categoryId = req.params.categoryId;
    let sql = `DELETE from categories where id = ${categoryId}`;
    let query = connection.query(sql,(err, result) => {
        if(err) throw err;
        res.redirect('/admin-category');
    });
});
//------------------------eror-------------------------------------

//----------------------------------------------admin user---------------------------------
app.get('/admin-user',(req, res) => {

    if (req.session.hao2=='admin@gmail.com') {
        let sql = "SELECT * FROM users";
        let query = connection.query(sql, (err, rows) => {
            if(err) throw err;
            res.render('admin/user', {
                title : 'Quản lý user',
                users : rows,
                user : req.session.log
            });
        });
    } else {
        //res.end('invalide');
        res.render('admin/error', { title: 'Bạn không có quyền truy cập',user : req.session.log});
    }

    // let sql = "SELECT * FROM users";
    // let query = connection.query(sql, (err, rows) => {
    //     if(err) throw err;
    //     res.render('admin/user', {
    //         title : 'Quản lý user',
    //         users : rows
    //     });
    // });
});
app.get('/admin-user/edit/:userId',(req, res) => {

    const userId = req.params.userId;
    let sql = `Select * from users where u_id = ${userId}`;
    let query = connection.query(sql,(err, result) => {
        if(err) throw err;
        res.render('admin/user_edit', {
            title : 'Chi tiết người dùng',
            user : result[0],
            user : req.session.log
        });
    });

});

app.post('/user-up',(req, res) => {
    const userId = req.body.id;
    let sql = "update `users` SET `username`='"+req.body.username+"',`password`='"+req.body.password+"',`author`='"+req.body.author+"',`avatar`='"+req.body.avatar+"' WHERE `u_id` ="+userId;
    let query = connection.query(sql,(err, results) => {
      if(err) throw err;
      res.redirect('/admin-user');
    });
});
app.get('/user/add',(req, res) => {
    res.render('admin/user_add', {
        title : 'Thêm tác giả',
        user : req.session.log
    });
});
app.post('/user-save',(req, res) => { 
    let data1 = {username: req.body.username, password: req.body.password, author: req.body.author, avatar: req.body.avatar};
    let sql = "INSERT INTO users SET ?";
    let query = connection.query(sql, data1,(err, results) => {
      if(err) throw err;
      res.redirect('/admin-user');
    });
});





//----------------------------------------------------Server Listening------------------------------------------------------
const PORT =process.env.PORT || 8000;
app.listen(PORT, () => {
    console.log('Server is running');
});


//nodemon app (OR) npm start