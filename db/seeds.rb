# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(rolename: 'Admin', edituser:  'y', modifymasters: 'y', allowmod: 'y', allowanalysis: 'y', allowupload: 'y')
Role.create(rolename: 'Moderator', edituser:  'n', modifymasters: 'n', allowmod: 'y', allowanalysis: 'y', allowupload: 'y')
Role.create(rolename: 'Analyst', edituser:  'n', modifymasters: 'n', allowmod: 'n', allowanalysis: 'y', allowupload: 'y')
Role.create(rolename: 'User', edituser:  'n', modifymasters: 'n', allowmod: 'n', allowanalysis: 'n', allowupload: 'y')