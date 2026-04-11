# @param {Integer} days
# @param {Integer[][]} meetings
# @return {Integer}

def count_days(days, meetings)
    meetings.sort!
    busy = 0
    cur_start, cur_end = meetings[0]

    meetings[1..].each do |start, finish|
        if start <= cur_end
            cur_end = [cur_end, finish].max
        else
            busy += cur_end - cur_start + 1
            cur_start, cur_end = start, finish
        end
    end

    busy += cur_end - cur_start + 1
    days - busy
end

days = 10
meetings = [[5,7],[1,3],[9,10]]

p count_days(days, meetings)

=begin


=end
