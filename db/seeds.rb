# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create!([
	{
		proj_name: "SRT", 
		description: "508 compliance checker for solicitatoins",
		client: "GSA",
		status: "current"
	},
	{
		proj_name: "508 Maturity", 
		description: "508 Maturity Dashboard app",
		client: "GSA",
		status: "current"
	},
	{
		proj_name: "CMMI", 
		description: "Personal software process helper",
		client: "Self",
		status: "current"
	}
	])