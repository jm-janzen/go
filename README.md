# Super-basic golang Debian/Ubuntu example

### install go

#### update necessary paths
`source ./export-go-paths.sh` (or just add these paths to your ~/.profile, and source it)

#### write some go
`vi src/awesome/my-awesome-thing.go`
(hack, hack, hack...)

#### install your awesome thing
`go install src/awesome/my-awesome-thing.go`

#### run your awesome thing
`./bin/my-awesome-thing`
(awesome things happen)

### or just compile (no binary)

`go run src/awesome/my-awesome-thing.go`

By default, the above options will compile for the OS from which they were run.
