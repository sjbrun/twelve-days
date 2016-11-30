class MadlibsController < ApplicationController
  @@lyrics = "On the first day of Christmas, my true love gave to me a partridge in a pear tree.
  
              On the second day of Christmas my true love gave to me two turtle doves
              And a partridge in a pear tree.
              
              On the third day of Christmas my true love gave to me three French hens,
              Two turtle doves, and a Partridge in a pear tree.
              
              On the fourth day of Christmas my true love gave to me
              Four calling birds, three French hens, two turtle doves and a Partridge in a pear tree.
              
              On the fifth day of Christmas my true love gave to me five golden rings,
              Four calling birds, three French hens, two turtle doves and a Partridge in a pear tree.
              
              On the sixth day of Christmas my true love gave to me six geese a laying,
              Five golden rings, four calling birds, three French hens, two turtle doves
              And a Partridge in a pear tree.
              
              On the seventh day of Christmas my true love gave to me seven swans a swimming,
              Six geese a laying, five golden rings, four calling birds, three French hens,
              Two turtle doves and a Partridge in a pear tree.
              
              On the eighth day of Christmas my true love gave to me eight maids a milking,
              Seven swans a swimming, six geese a laying, five golden rings, four calling birds,
              Three French hens, two turtle doves and a Partridge in a pear tree.
              
              On the ninth day of Christmas my true love gave to me nine ladies dancing,
              Eight maids a milking, seven swans a swimming, six geese a laying, five golden rings,
              Four calling birds, three French hens, two turtle doves and a Partridge in a pear tree.
              
              On the tenth day of Christmas my true love gave to me ten lords a leaping,
              Nine ladies dancing, eight maids a milking, seven swans a swimming, six geese a laying,
              Five golden rings, four calling birds, three French hens, two turtle doves
              And a Partridge in a pear tree.
              
              On the eleventh day of Christmas my true love gave to me eleven pipers piping,
              Ten lords a leaping nine ladies dancing, eight maids a milking, seven swans a swimming,
              Six geese a laying, five golden rings, four calling birds, three French hens,
              Two turtle doves and a Partridge in a pear tree.
              
              On the twelfth day of Christmas my true love gave to me twelve drummers drumming,
              Eleven pipers piping, ten lords a leaping nine ladies dancing, eight maids a milking,
              Seven swans a swimming, six geese a laying, five golden rings, four calling birds,
              Three French hens, two turtle doves and a Partridge in a pear tree."
  
  def new
    @madlib = Madlib.new
  end
  
  def edit
  end
  
  def create
    @madlib = Madlib.new(madlib_params)
    if @madlib.save
      flash[:success] = "Madlib created successfully"
      redirect_to madlib_path(@madlib)
    else
      render 'new'  ## render new article template in case of failure for another try
    end
  end
  
  def update
  end
  
  def show
  end
  
  def delete
  end
  
  
  private
  
  def madlib_params
    params.require(:madlib).permit(:nouns, :verbs)
  end

end
