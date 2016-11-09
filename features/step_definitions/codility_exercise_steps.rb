When(/^create a map as n "(.*?)"$/) do |n|
  @n=n.to_i
end

Then(/^create two ships as s "(.*?)"$/) do |s|
  @s=s
end

Then(/^create hits as t "(.*?)"$/) do |t|
  @t=t
end

Then(/^return quantities of sunken ships and hitten ships was not sunken$/) do
  @codility=SolutionCodility.new
  @codility.solution(@n,@s,@t)
end
