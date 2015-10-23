module PagesHelper
  
  def get_hue(idx)
    bitcount = 32
    puts "bitcount = " + bitcount.to_s
		# Reverse the bits of idx into ridx
		ridx = 0
		i = 0
		puts "ridx = " + ridx.to_s
		puts "i = "+i.to_s
	  for i in 0..bitcount do
      ridx = (ridx << 1) | (idx & 1)
		  idx >>= 1
		end
    puts "ridx = "+ridx.to_s
		
		# Divide by 2**bitcount
	  hue = ridx / (2 ** bitcount)
	  puts "hue = "+hue.to_s


    
    #thing = idx.to_i.upack('b*')
    
    #puts "unpacked = "+thing
    puts idx.integer?
    #temp = idx.to_s.unpack('L')
    #puts temp.to_s
    #hue = idx.pack('B*')

		# Start at .6 (216 degrees)
    return ((hue + 0.6) % 1)
  end

		# next_hue = 0 in the pages_controller
		
	# def add_colored_thingy(to_whom)
	# 	hue = get_hue(next_hue++)
	# 	degrees = (hue * 360).round
	# 	newElement = '<span><span class="examplebox" style="background-color: hsl(' + degrees + ', 100%, 65%);">' + degrees.toString() + "<\/span><\/span>"
	# 	to_whom.innerHTML = to_whom.innerHTML + newElement;
  # end
  
  def to_ba(num, size=8)
    (-size+1..0).inject({}) {|x,i| x << num[-i]}
  end
  
  def binary(n)
    Math.log2(n).floor.downto(0).select {|i| n[i] == 1 }.collect {|i| 2**i}
  end
  
  def binaryTwo(n)
    bit = 0
    two_to_the_bit = 1
    result = []
    while two_to_the_bit <= n
      if n[bit] == 1
        result.unshift two_to_the_bit
      end
      two_to_the_bit = two_to_the_bit << 1
      bit += 1
    end
    result
  end
  
  def to_binary32(n)
    string = n.to_s(2)
    length = string.length
    puts length
  end  
  
  def reverse(a)
      (0...(a.length/2)).each {|i| a[i], a[a.length-i-1]=a[a.length-i-1], a[i]}
      return a
  end
  
end
