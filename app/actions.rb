#get '/' do
 #   "HelloWorld!"
 #   File.read(File.join('app/views', 'index.html'))
#end

def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60 && time_ago_in_minutes < 120
        "1 hour ago"
    elsif time_ago_in_minutes >=120
        "#{time_ago_in_minutes / 60 } hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

def FizzBuzz(any_num)
    if (any_num % 3 == 0)
        if (any_num % 5 == 0)
            p "FIZZBUZZ"
        else
        p "FIZZ"
        end
    elsif (any_num % 5 == 0)
        p "BUZZ"
    else
        p "Given number #{any_num} not divisible by  either 3 or 5"
    end
end

# When a browser requests the root of the application
get '/' do
    finstagram_post_shark = 
    {
        username: "sharky_j",
        avatar_url: "http://naserca.com/images/sharky_j.jpg",
        photo_url: "http://naserca.com/images/shark.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: 
        [{
        username: "sharky_j",
        text: "Out for the long weekend... too embarrassed to show y'all the beach bod!"
        }]
    }

    finstagram_post_whale = 
    {
        username: "kirk_whalum",
        avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
        photo_url: "http://naserca.com/images/whale.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: 
        [{
        username: "kirk_whalum",
        text: "weekendvibes"
        }]
    }

    finstagram_post_marlin = 
    {
        username: "marlin_peppa",
        avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
        photo_url: "http://naserca.com/images/marlin.jpg",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: 
        [{
        username: "marlin_peppa",
        text: "lunchtime! ;)"
        }]
    }
    
    [finstagram_post_shark, finstagram_post_whale, finstagram_post_marlin].to_s
    # FizzBuzz(15)
    # FizzBuzz(33)
    # FizzBuzz(23)
    # FizzBuzz(40)
  # Stop
  end

    # #if the time_ago_in_minutes is greater than 60 minutes
    # if time_ago_in_minutes > 60

    #     #return this string
    #     "more than a hour"
    
    # #if the time_ago_in_minutes is exactly 60 minutes
    # elsif time_ago_in_minutes == 60

    #     #return this string
    #     "an hour"

    # #if time_ago_in_minutes is less than a minute
    # elsif time_ago_in_minutes <= 1

    #     #return just a moment ago
    #     "just a moment ago"

    # #if time_ago_in_minutes is less than 60 minutes
    # else

    #     #return this instead
    #     "less than a hour"
    # end

    # if time_ago_in_minutes >= 60

    #     "#{time_ago_in_minutes / 60} hours ago"

    # else

    #     "#{time_ago_in_minutes} minutes ago"
    
    # end
