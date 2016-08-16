
var gulp = require('gulp'),
connect = require('gulp-connect');

gulp.task('webserver',function(){
    connect.server({
        port:8010,
        host:'127.0.0.1'
    });
});
 
gulp.task('default',['webserver']);