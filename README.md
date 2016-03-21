== Course Blog

## Questions
	1. What are we building?
	2. Who are we building it for?
	3. What featrues do we want to have?

	### What are we building?
		- Blog application. A place for sharing articles and projects
		- Also can add profile to web application

	### Who are we building it for?
		- For user who have some ideas to write article and want to share they 
			 projects

	### What featrues do we want to have?
		- User sign up / in / out
		- Authentication, so user can access just their own
		- CRUD for articles and projects

## Data
	==Article==
	belongs_to :user
		- Title
		- Content
	==Project==
	belongs_to :user
		- Title
		- Description
		- Image uploading