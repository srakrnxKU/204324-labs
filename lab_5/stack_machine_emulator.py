with open("stackmachine.asm") as f:
    contents = [i.strip() for i in f.readlines()]

stack = []

for i in contents:
    print(i)
    if i == "add":
        stack.append(stack.pop() + stack.pop())
    elif i == "minus":
        stack.append((0 - stack.pop()) + stack.pop())
    elif i == "times":
        stack.append(stack.pop() * stack.pop())
    elif i == "divide":
        stack.append(int((1 / stack.pop()) * stack.pop()))
    elif i == "mod":
        stack.append(stack.pop(-2) % stack.pop(-1))
    elif "push" in i:
        stack.append(int(i.split("\t")[1]))
    print(stack)
