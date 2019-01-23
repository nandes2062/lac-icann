/**
 * config
 * contains preferences for gulp tasks, folders, extensions et al
 */

const config = {

    // A-Z!

    // Browsersync
    // https://www.browsersync.io/docs/options
    'browserSync': {
        'proxy': process.env.APP_HOST,
        'port': 3000,
        'open': false,
        'reloadOnRestart': true,
        'notify': false,
        'reloadDelay': 0,
        'ghostMode': false // disable mirroring clicks, scrolls and forms. it’s too buggy.
    },

    // Clean
    // clean asset folders before new assets are generated
    'clean': {
        'cleanableTasks': [
            'images',
            'templates',
            'scripts',
            'styles',
            'svg'
        ]
    },

    // Copy
    // copy assets from source to app
    // watch out: path for destinationFolder is built relative from sourceFolder!
    'copy': [
        {
            'title': 'SVGs',
            'sourceFolder': './source/templates/svg',
            'sourceFiles': ['*.svg'],
            // 'dest': './html/assets/svg'
            'destinationFolder': './html/assets/svg'
        }
    ],

    // cssnano (minifies CSS)
    // http://cssnano.co/options/
    'cssnano': {
        'zindex': false,
        'discardUnused': false,
        'mergeIdents': false,
        'reduceIdents': false
    },

    // Images
    'images': {
        'sourceFiles': ['./source/images/**/*.{jpg,png,gif,svg}'],
        'destinationFolder': './html/assets/images',
        'watchFiles': ['./source/images/**/*.{jpg,png,gif,svg}'],
        'cleanFiles': ['./html/assets/images/*.{jpg,png,gif,svg}']
    },

    // Responsive images
    'responsive': {
        'sourceFiles': ['./source/responsive/**/*.{jpg,jpeg,png,gif}'],
        'destinationFolder': './html/assets/images',
        'watchFiles': ['./source/responsive/**/*.{jpg,jpeg,png,gif}'],
        'cleanFiles': ['./html/assets/images/**/*.{jpg,jpeg,png,gif}']
    },

    // Favicon
    'favicon': {
        'sourceFiles': ['./source/favicon/*.png'],
        'destinationFolder': './html',
        'watchFiles': ['./source/favicon/*.png'],
        'cleanFiles': ['./html/favicon.ico']
    },

    // Modernizr
    // https://modernizr.com/docs
    'modernizr': {
        'feature-detects': [
            'css/animations',
            'css/filters',
            'css/flexbox',
            'css/pointerevents',
            'css/transforms3d',
            'css/transitions',
            'css/vhunit',
            'css/vwunit',
            'css/backgroundblendmode',
            'css/cssgrid',
            'css/positionsticky'
        ],
        'options': [
            'setClasses'
        ],
        'classPrefix': ''
    },

    // Templates
    'templates': {
        'sourceFolder': './source/templates',
        'sourceFiles': ['./source/templates/{*,components/*,stylesguide/*}.pug'],
        'destinationFolder': './html/lac-demo',
        'watchFiles': ['./source/templates/**/*.{pug,json,html}'],
        'cleanFiles': ['./html/lac-demo/*.html']
    },

    // Scripts
    'scripts': {
        'sourceFiles': ['./source/scripts/script.js'],
        'destinationFolder': './html/assets/js',
        'watchFiles': ['./source/scripts/**/*.js'],
        'cleanFiles': ['./html/assets/js/*.{js,map}']
    },

    // Styles
    'styles': {
        'sourceFiles': ['./source/sass/*.scss'],
        'destinationFolder': './html/assets/css',
        'watchFiles': ['./source/sass/**/*.scss'],
        'cleanFiles': ['./html/assets/css/*.{css,map}']
    },

    // SVG
    // combines SVG files to into one with <symbol> elements (»SVG sprite«)
    'svg': {
        'sourceFiles': ['./source/svg/**/*.svg'],
        'destinationFolder': './source/templates/svg',
        'watchFiles': ['./source/svg/**/*.svg'],
        'cleanFiles': ['./html/assets/svg/*.svg']
    },
    'fonts': {
        'sourceFiles': ['./source/fonts/**/*.*'],
        'destinationFolder': './html/assets/fonts',
        'watchFiles': ['./source/fonts/**/*.*'],
        'cleanFiles': ['./html/assets/fonts/*.*']
    },

    // Watch
    // watches for file changes and fires up related tasks
    'watch': [
        {'responsive': ['responsive']},
        {'favicon': ['favicon']},
        {'images': ['images']},
        {'styles': ['styles']},
        {'svg': ['svg']},
        {'fonts': ['fonts']},
        {'templates': ['templates']}
    ]
};

module.exports = config;