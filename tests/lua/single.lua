print("hello world")
local env = environment()
parse_lean_cmds([[ Variables a b : Int ]], env)
print(parse_lean([[a + b + 10]], env))
