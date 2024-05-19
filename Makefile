all: migratedown migrateup sqlc # Make all depend on both sqlc and migrateup

migrateup:
	migrate -path ./db/migrations -database "postgres://buildthings:singse@localhost:5432/cedar-bank?sslmode=disable" -verbose up
migratedown: 
	migrate -path ./db/migrations -database "postgres://buildthings:singse@localhost:5432/cedar-bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate
