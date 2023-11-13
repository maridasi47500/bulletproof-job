class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_and_belongs_to_many :jobs, :join_table => :userhavejobs
  belongs_to :city
  belongs_to :country
   def image=(uploaded_io)
                   File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
                                             file.write(uploaded_io.read)
                                                                         end
                                     write_attribute(:image, uploaded_io.original_filename)
                                       end
     def image
                       read_attribute(:image)
                         end
end
