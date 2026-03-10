# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
    ord = Hash.new
    res = Array.new(s.length, [])

    order.each_char.with_index do |char, i|
        ord[char] = i
    end

    s.each_char.with_index do |char, i|
        pos = ord[char]

        if pos
            p "pos: #{pos}, #{char}, #{res[pos]}"
            res_pos = res[pos].dup
            res_pos << char
            res[pos] = res_pos
        else
            res << char
        end
    end
    p ord
    p res
    res.flatten.join
end

order = "cba"
s = "abcd"
p custom_sort_string(order, s)

=begin

{
    k: 0
    q: 1
    e: 2
    p: 3
}

res = [[k], [q], [e, e], [p], 0]

    i
pekeq

=end
