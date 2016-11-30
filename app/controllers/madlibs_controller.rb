class MadlibsController < ApplicationController
  before_action :set_madlib, only: [:show, :edit, :update, :destroy]
  
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
  
  @@defaults = ['partridge in a pear tree', 'turtle doves',
                'french hens', 'calling birds', 'golden rings',
                'geese a laying', 'swans a swimming','maids a milking',
                'ladies dancing', 'lords a leaping', 'pipers piping',
                'drummers drumming']
  
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
      render 'new'
    end
  end
  
  def update
  end
  
  def show
    @subs = [@madlib.one, @madlib.two, @madlib.three, @madlib.four,
            @madlib.five, @madlib.six, @madlib.seven, @madlib.eight,
            @madlib.nine, @madlib.ten, @madlib.eleven, @madlib.twelve]
    @lyrics = @@lyrics.downcase
    (0..11).each do |n|
       @lyrics.gsub! @@defaults[n], @subs[n]
    end
  end
  
  def index
  end
  
  def delete
  end
  
  
  private

  def set_madlib
    @madlib = Madlib.find(params[:id])
  end

  def madlib_params
    params.require(:madlib).permit(:one, :two, :three, :four, :five, :six,
                            :seven, :eight, :nine, :ten, :eleven, :twelve)
  end

end
