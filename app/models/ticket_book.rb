class TicketBook < ActiveRecord::Base
validates_presence_of :name
validates_uniqueness_of :tnumber, if: :check_cancel_date

before_create :generate_number
before_create :check_cancel_date
before_create :issue_date
def generate_number
 @chars= ('A'..'Z').to_a
 @str1=@chars.sample(3)
 @str1=@str1.shuffle.join
  @chars1=('A'..'Z').to_a + (1..10).to_a
  @str2=@chars1.sample(3)
  @str2=@str2.shuffle.join
  if(@str=="SELFIE"||@str=="BARNEY"||@str=="MONICA"||@str=="RACHEL")
	 generate_number
   end
   @str=@str1+@str2
 if (@str[0..2]=="EKA")
	generate_number
 end
   self.tnumber=@str
end
	
def issue_date
	self.issuedate=self.created_at
end
def check_cancel_date
  if self.is_cancelled == true
   if self.canceldate > Date.today-3.months
    errors.add(:tnumber,"already exists")
     generate_number    
   end
 end
 end
end

