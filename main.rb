def filterSum(string)
  split = string.split('')
  num = split.map{|n| n.to_i}
  return num.sum
end

def palindrome(string)
 return true if string.length <= 1
 return palindrome(string[1..-2]) if string[0] == string[-1]
 return false    
end

def sum(*lists)
  return lists.flatten.sum
end

def interlace(*strings)
  weave = []
  max = strings.max_by(&:length)
    for i in (0..max.length-1)
      for s in strings 
        weave << s[i]
      end
    end
  return weave.compact.join
end

def atbash(message)
  alpha = ('a'..'z').to_a
  oppos = alpha.reverse
  arr = [] 
  for c in message.split('')
    arr << oppos[alpha.index(c)]
  end
  return arr.join
end

puts('Testing filterSum:')
puts("Case '%s': #{filterSum('aweifn1324inoasdfn2343nj1kn1') == 24 }" % ['aweifn1324inoasdfn2343nj1kn1'])
puts("Case '%s': #{filterSum('100dfghjk19248357234bdf') == 49}\n\n" % ['100dfghjk19248357234bdf'])

puts('Testing palindrome:')
puts("Case '%s': #{palindrome('wow') == true }" % ['wow'])
puts("Case '%s': #{palindrome('no') == false}\n\n" % ['no'])

puts('Testing sum:')
puts("Case [1,2,3], [4,5,6], [7,8,9]: #{sum([1,2,3], [4,5,6], [7,8,9]) == 45 }")
puts("Case [123, 456, 789], [987, 654, 321], [231, 564, 897]: #{sum([123,456,789], [987,654,321], [231,564,897]) == 5022}\n\n" )

puts('Testing interlace:')
puts("Case 'ABCD', '123', 'abcde': #{interlace("ABCD", "123", "abcde") == 'A1aB2bC3cDde'}")
puts("Case 'potato', 'snow', '1010101', 'nope': #{interlace('potato', 'sNoW', '1010101', 'NOPE') == 'ps1NoN0Oto1PaW0Et1o01'}\n\n" )

puts('Testing atbash:')
puts("Case '%s': #{atbash('ruby') == 'ifyb'}" % ['ruby'])
puts("Case '%s': #{atbash('isthisreallifeisthisjustfantasycaughtinalandslide') == 'rhgsrhivzooruvrhgsrhqfhguzmgzhbxzftsgrmzozmwhorwv'}\n\n" % ['isthisreallifeisthisjustfantasycaughtinalandslide'])
