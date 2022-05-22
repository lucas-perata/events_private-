class UsersController < ApplicationController
    before_action :authenticate_user!       
    def show 
        @user = current_user
       @events = Event.all
       
       @attendances = Attendance.all
    end 

    def attendance 
        @user = current_user
        @events = Event.all
        @attendances = Attendance.all
    end 

    def events 
        @user = current_user
        @events = Event.all
        @attendances = Attendance.all

    end 
    
end
