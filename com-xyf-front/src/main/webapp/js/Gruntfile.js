'use strict';

module.exports = function(grunt) {

	grunt.initConfig({
		connect: {
			server: {
				options: {
					port: 9000,
					base: '',
				}
			}
		},
		uglify: {
			target: {
				banner: 'Ratyli: jquery rating plugin - (c) 2015 Peter Varga [info@vargapeter.com] - released under the Apache 2.0 license',
				files: {
					'jquery.ratyli.min.js': ['jquery.ratyli.js']
				}
			}
		},
		watch: {
			files: ['jquery.ratyli.js'],
			tasks: ['uglify']
		}
	});



	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-connect');
	grunt.loadNpmTasks('grunt-contrib-uglify');

	grunt.registerTask('default', ['connect','watch']);
};