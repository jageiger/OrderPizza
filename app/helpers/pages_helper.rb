module PagesHelper

  
  def reverse(a)
      (0...(a.length/2)).each {|i| a[i], a[a.length-i-1]=a[a.length-i-1], a[i]}
      return a
  end
  
end
