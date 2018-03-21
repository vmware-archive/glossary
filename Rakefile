require 'fileutils'

task default: %w[build]

task :build do
    FileUtils.rm_rf('build')
    FileUtils.mkdir_p('build')
    `ruby ./build.rb > build/index.html`
    `sass "src/scss/styles.scss" "build/styles.css"`
end
