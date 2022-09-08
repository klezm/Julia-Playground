
# ------------------------------------------------------------------------------------------
# # 循环
#
# 话题：
# 1. `while`循环
# 2. `for`循环
#
#
# ## `while` 循环
#
# `while` 循环语法：
#
# ```julia
# while <condition>
#     <loop body>
# end
# ```
#
# 举个例子，可以使用 `while` 来数数或者遍历一个数组。
# ------------------------------------------------------------------------------------------

n = 0
while n < 10
    n += 1
    println(n)
end
n

myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]

i = 1
while i <= length(myfriends)
    friend = myfriends[i]
    println("Hi $friend, it's great to see you!")
    i += 1
end

# ------------------------------------------------------------------------------------------
# ## `for` 循环
#
# `for` 循环语法：
# ```julia
# for <var> in <loop iterable>
#     <loop body>
# end
# ```
#
# 上面两个例子都可以用 `for` 循环改写：
# ------------------------------------------------------------------------------------------

for n in 1:10
    println(n)
end

myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]

for friend in myfriends
    println("Hi $friend, it's great to see you!")
end

# ------------------------------------------------------------------------------------------
# 让我们来试试用 `for` 循环创建加和表，表的每个元素为其行索引和列索引的和。
#
# 首先，来初始化一个全零的数组（矩阵）。
# ------------------------------------------------------------------------------------------

m, n = 5, 5
A = fill(0, (m, n))

for i in 1:m
    for j in 1:n
        A[i, j] = i + j
    end
end
A

# ------------------------------------------------------------------------------------------
# 趁机介绍一下像上面这种嵌套 `for` 循环的语法糖
# ------------------------------------------------------------------------------------------

B = fill(0, (m, n))

for i in 1:m, j in 1:n
    B[i, j] = i + j
end
B

# ------------------------------------------------------------------------------------------
# 创建同样的表但更具有“Julia”风格的方法是使用**数组解析式（array comprehension）**。
# ------------------------------------------------------------------------------------------

C = [i + j for i in 1:m, j in 1:n]

# ------------------------------------------------------------------------------------------
# ## 练习
#
# ### 4.1
# 循环遍历 1 到 100 的整数并打印它们的平方。
# ------------------------------------------------------------------------------------------

# 在此作答


# ------------------------------------------------------------------------------------------
# ### 4.2
# 给上一题的代码添一点以创建一个字典，使字典存着每个整数和它的平方的键值对，就像这样
#
# ```julia
# squares[10] == 100
# ```
# ------------------------------------------------------------------------------------------

# 在此作答


@assert squares[10] == 100
@assert squares[11] == 121

# ------------------------------------------------------------------------------------------
# ### 4.3
# 用数组解析式来创建一个数组 `squares_arr`，让它存着从1到100的整数的平方。
# ------------------------------------------------------------------------------------------

squares_arr = [i for i in 1:100]

@assert length(squares_arr) == 100
@assert sum(squares_arr) == 338350

# ------------------------------------------------------------------------------------------
# 请在完成练习运行 `@assert` 块以检测结果是否正确，若无报错即为正确。
# ------------------------------------------------------------------------------------------
