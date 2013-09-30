class Base64
	$encoding = ["A", "B", "C", "D", "E", "F", "G", "H","I","J",
				"K", "L", "M", "N", "O", "P", "Q", "R","S","T",
				"U", "V", "W", "X", "Y", "Z", "a", "b","c","d",
				"e", "f", "g", "h", "i", "j", "k", "l","m","n",
				"o", "p", "q", "r", "s", "t", "u", "v","w","x",
				"y", "z", "0", "1", "2", "3", "4", "5","6","7",
				"8", "9", "+", "/"]
	def self.Base64Encrypt (source)
		
		#checks if its a String
		if(source.is_a? String)
			String s = source.unpack('B*').to_s;
			numAry = Array.new
			String temp = String.new
			s.split("").each do |i|
				puts(temp)
				if(temp.length==6)
					numAry.push($encoding[temp.to_i(2)])
					temp=""
				end
				if(i=="0"||i=="1")
					temp<<i
				end
			end
			if(temp.length!=0)
				
				if(temp.length>2)
					numAry.push($encoding[(temp<<"00").to_i(2)])
					numAry.push("=")
				else
					numAry.push($encoding[(temp<<"0000").to_i(2)])
					numAry.push("=")
					numAry.push("=")
				end
			end

			puts("Array is ")
			puts(numAry.join)
			# source.each_char do |i|
			# 	String s = i.unpack('b*')
			# end
		else
			puts("not recognized, plz try again")
		end# end of else
	end# end of method
	def self.Base64Decrypt(source)
		# result = Array.new
		# resultStr = String.new
		# if(source.is_a? String)
		# 	numAry = Array.new
		# 	temp = String.new
		# 	tempstr = String.new
		# 	s = source.split("")
		# 	s.each do|i|
		# 		if(i!="=")
		# 			numAry.push($encoding.index(i))
		# 		end
		# 	end
		# 	if(numAry.length!=0)
		# 		numAry.each do |i|
		# 			temp<<i.to_s(2).inspect
		# 		end
		# 		# temp2=temp.split("")
		# 		# temp2.each do |i|
		# 		# 	tempstr=tempstr<<i
		# 		# 	if(tempstr.length==8)
		# 		# 		result.push(tempstr)
		# 		# 		tempstr=""
		# 		# 	end
		# 		# end
		# 		# if(tempstr.length!=0)
		# 		# 	result.push(tempstr)
		# 		# end

		# 		# result.each do|x|
		# 		# 	resultStr<<x.to_i(2).chr.inspect
		# 		# end


		# 		# resultStr=result.unPack('B*').to_s

		# 		# w = temp.pack('B*').to_s

		# 	else
		# 		puts("wrong encoding")
		# 	end
		# else
		# 	puts("not recognized, plz try again")
		# end
		# puts(numAry)
		puts(source.unpack('m*'))
	end#end of method
end#end of Class