package build

import (
	"github.com/CoreumFoundation/crust/build/golang"
	"github.com/CoreumFoundation/crust/build/types"
	"github.com/CoreumFoundation/znet/build/znet"
)

// Commands is a definition of commands available in build system.
var Commands = map[string]types.Command{
	"build/me": {Fn: znet.BuildBuilder, Description: "Builds the builder"},
	"znet":     {Fn: znet.BuildZNet, Description: "Builds znet binary"},
	"lint":     {Fn: golang.Lint, Description: "Lints code"},
	"tidy":     {Fn: golang.Tidy, Description: "Runs go mod tidy"},
}
