class UsersController < ApplicationController

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
