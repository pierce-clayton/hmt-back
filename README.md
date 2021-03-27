# How Much Time backend

Check out the app [here](https://github.com/technicholy/hmt-front).

This backend is required for the app to function. To get this running for yourself, 

* clone repository

* `rails db:migrate` from the project directory

* `rails s`

* open index.html from the frontend on your browser

You will need the backend to run on the machine you want to open the frontend on.

## Notes

This uses the Rails scaffold to set up the models, controllers, and db schema. The routes use the `resources` helper. Overall, this got the most out of the speed from rails since there was very little I needed to modify to get things to work.