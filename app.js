var	express = require("express"),
	mysql	= require("mysql"),
	path	= require("path"),
	doc_root	= __dirname;
	
var app		= express();

var connect	= mysql.createConnection({
	"host"	: "localhost",
	"user"	: "root",
	"password"	: "",
	"database"	: "db_rest_api"
});


/* config */

app.configure(function(){
	app.set("port", "3000")
	app.use(express.bodyParser());
	app.use(express.methodOverride());
	app.use(app.router);
	app.use(express.errorHandler({ dumpExceptions : true, showStack : true}));	
});

app.get('/api', function(req, res){
	res.send("your api is running");
});

app.get('/api/all', function(req, res){
	connect.query("select * from master_user;", function(err, rows, fields) {
		res.writeHead(200, {'Content-Type' : 'text/plain'});
		str = '';
		for(i = 0; i < rows.length; i++)
			str = str + 'nama  : ' + rows[i].nama + ', Alamat : ' +  rows[i].alamat + ', Telp : ' + rows[i].telp + ', Email : ' + rows[i].email + '\n';
		res.end(str);
	});
});

app.get('/api/user/:id', function(req, res){
	var id = req.params.id;
	connect.query("select * from master_user where id_user = ?;", [id], function(err, rows, fields){
		if(rows.length == 0) {
			res.send("data doesn't match");
		} else {
			res.writeHead(200, {'Content-Type' : 'text/plain'});
			str = 'nama  : ' + rows[0].nama + ', Alamat : ' + rows[0].alamat + ', Telp : ' + rows[0].telp + ', Email : ' + rows[0].email;
			res.end(str);
		}
	});
});

app.get('/api/user/add/:nama/:alamat/:telp/:email', function(req, res){
	var	nama	= req.params.nama,
		alamat	= req.params.alamat,
		telp	= req.params.telp,
		email	= req.params.email;
		
	connect.query("insert into master_user(nama,alamat,telp,email) values(?,?,?,?);", [nama, alamat, telp, email], function(err){
		if(err){
			res.send("an error accoured");
		} else {
			res.redirect('/api/all');
		}
	});
});

app.get('/api/user/delete/:nama', function(req, res){
	var nama	= req.params.nama;
	connect.query("delete from master_user where nama = ?;", [nama], function(err){
		if(err){
			res.send("an error accoured");
		} else {
			res.redirect('/api/all');
		}
	});
});

app.listen(app.get("port"));
console.log("your server is up on port " + app.get("port"));
