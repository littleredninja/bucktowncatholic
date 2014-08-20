Steps for building a CRUD App

1. Read the instructions (if applicable)
2. Draw the schema
3. Create migrations
4. Create AR classes
5. Add associations (just one or two at a time)
	 - create an association
	 - test via seeds/console before you add validations, and use bang methods
	 - repeat
6. Plan routes (get/post/put/delete -- but no implementation)
7. Implement Routes (just one at a time, in this order: 

index - list all
show - show one
new - a form (get request to show a form)
create - make a new one
edit - put data to server to edit an existing comment (don't typically have views, redirect) (get request to edit a form)
update - show a form to edit a existing comment (don't typically have views, redirect)
delete - 

For each one:  
	 - create route
	 - create view
	 - test
	 - repeat