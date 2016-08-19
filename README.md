##Introduction

This demo project is for showing a potential issue about the `mount` statement in `Hanami::Container.configure`. It's suspected that the container failed to load static files correctly for multiple apps if the mount path is not default.

##How to reproduce

This project is produced with the following steps:

1. `hanami new static_path_test`
2. `hanami generate app another`
3. `hanami generate action another 'home#index'`
4. Place two different js files with the name `test.js` in the `assets/javescripts` folders in the two apps. Load them in the template of `another` app with `<%= javascript 'test' %>`
5. In `config/environment.rb`, mount the `another` app to `'/'`. Please see the file for details
6. Run the server. The js file will be loaded from `web` app, which is not expected
7. However, if you comment the `require` statement, the js file will be loaded correctly. (Please empty the `public` folder when restarting the server)
