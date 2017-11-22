var gulp = require('gulp'),
watch = require('gulp-watch'),
latex = require('gulp-latex');

gulp.task('latex', function() {
  return gulp.src('main/main.tex')
    .pipe( latex())
    .pipe( gulp.dest('./main/'))
});

gulp.task('watch', function() {

  watch('src/*.tex', function() {
    gulp.start('latex');
  });
});
