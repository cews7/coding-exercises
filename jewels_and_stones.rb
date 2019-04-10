# You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.
# The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".
# Example 1:
# Input: J = "aA", S = "aAAbbbb"
# Output: 3
# Example 2:
#
# Input: J = "z", S = "ZZ"
# Output: 0
# Note:
#
# S and J will consist of letters and have length at most 50.
# The characters in J are distinct.

class StoneFilter
  # in english, we want to iterate through each stone
  # checking along the way if any of the characters we have in j are a match to what we have in s
  # for each match we encounter, we want to inrecement a counter by 1, starting at 0
  def jewels(j, s)
    counter = 0
    unique_chars = j.split("")
    s.chars.each do |stone|
      if (unique_chars.include?(stone))
        counter += 1
      end
    end
    p counter
  end
end


j = "ab"
s = "aAAAabbbb"
sf = StoneFilter.new
sf.jewels(j,s)
