const gulp = require('gulp');
const through = require('through');
const log = require('fancy-log');
const colors = require('ansi-colors');
const imagemin = require('gulp-imagemin');
const count = require('gulp-count');

// load config
const config = require('../config');

const task = () => gulp.src(config.images.sourceFiles)

// minify (production)
    .pipe(imagemin([
        // plugins (https://www.npmjs.com/browse/keyword/imageminplugin)
        imagemin.gifsicle(),
        imagemin.jpegtran(),
        imagemin.optipng(),
        imagemin.svgo()
    ], {
        // options
        verbose: true
    }))

    // log
    .pipe(count({
        message: colors.white('Image files processed: <%= counter %>'),
        logger: (message) => log(message)
    }))

    // save
    .pipe(gulp.dest(config.images.destinationFolder));

gulp.task('images', task);
module.exports = task;