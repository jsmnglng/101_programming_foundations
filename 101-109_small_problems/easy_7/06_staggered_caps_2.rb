# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the
# return value; they just don't count when toggling the desired case.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result += char
      next
    elsif need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Further Exploration
def staggered_case(string, alpha_only=true)
  result = ''
  need_upper = true
  string.chars.each_with_index do |char, index|
    if alpha_only
      if char =~ /[a-z]/i
        need_upper ? result += char.upcase : result += char.downcase
        need_upper = !need_upper
      else
        result += char
      end
    else
      index.even? ? result += char.upcase : result += char.downcase
    end
  end
  result
end

p staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
