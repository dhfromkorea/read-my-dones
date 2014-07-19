module.exports = function(grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        shell: {
            coffee: {
                command: 'coffee --compile --watch --output public/ src/'
            }
        }
    });

    grunt.loadNpmTasks('grunt-shell');

    grunt.registerTask('default', ['shell']);
};
