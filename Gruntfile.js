module.exports = function(grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        shell: {
            coffee: {
                command: 'coffee --compile --watch --output public/ src/'
            },
            start: {
                command: "NODE_PATH='./public/config:./public/utility:./public/lib' nodemon ./public/server.js"
            }
        }
    });

    grunt.loadNpmTasks('grunt-shell');

    grunt.registerTask('coffee', ['shell:coffee']);
    grunt.registerTask('start', ['shell:start']);
};
