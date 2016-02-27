/*global module:false*/
var webpack = require('webpack');

module.exports = function(grunt) {

    // Project configuration.
    grunt.initConfig({
        concurrent: {
            target: {
                tasks: ['connect', 'webpack:lib'],
                options: {
                    logConcurrentOutput: true
                }
            }
        },
        connect: {
            server: {
                options: {
                    port: 8000,
                    directory: '.',
                    base: '.',
                    keepalive: true
                }
            }
        },
        webpack: {
            lib: {
                // webpack options
                entry: './client/lib/index.js',

                output: {
                    path: 'dist/',
                    filename: 'mylib.box.js'
                },
                // webpack options
                plugins: [
                    new webpack.ProvidePlugin({
                        riot: 'riot'
                    })
                ],
                module: {
                    loaders: [{
                        test: /\.html$/,
                        loader: "html"
                    }, {
                        test: /\.tag$/,
                        loader: 'riotjs-loader'
                    }]
                },
                stats: {
                    // Configure the console output
                    colors: false,
                    modules: true,
                    reasons: true
                },

                failOnError: false, // don't report error to grunt if webpack find errors
                // Use this if webpack errors are tolerable and grunt should continue

                watch: true, // use webpacks watcher
                // You need to keep the grunt process alive

                keepalive: true, // don't finish the grunt task
                // Use this in combination with the watch option

                inline: true // embed the webpack-dev-server runtime into the bundle
                    // Defaults to false

            }
        }

    });

    // These plugins provide necessary tasks.
    grunt.loadNpmTasks('grunt-webpack');
    grunt.loadNpmTasks('grunt-contrib-connect');
    grunt.loadNpmTasks('grunt-concurrent');

    // Default task.
    grunt.registerTask('default', ['concurrent']);

};
