A simple API boiler project with versioning and authentication. The goal with this is to be able to plug-n-play or CLONE-n-play with User authentication using JWT pre-setup.

- Remember to configure PostgreSQL on C9:
https://github.com/Aerogami/guides/wiki/Cloud9-workspace-setup-with-Rails-and-Postgresql

There is no authorization setup, but the User model comes with an Admin boolean and a helper_method/concern can probably be built to check authorization.

Based on this tutorial:
https://paweljw.github.io/2017/07/rails-5.1-api-app-part-4-authentication-and-authorization/
