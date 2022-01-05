public class UpdateLesson {
    //Apex class checks status of lesson and if lesson is incomplete creates a task to owner
    //Owner assigns task to the tutor
public static void completedLesson(List <Lesson__c> newLessons){
    // Assign trigger  id for lesson object.
    Set<ID> lessonsID = new Set<ID>();
    // Assign task created to a list to be updated outside of for loop. 
     List<Task> ta =new List<Task>();
    //iterate through trigger and check status field.
    for (Lesson__c less : newLessons) {
        if(less.Lesson_Status__c =='incomplete'){
        lessonsID.add(less.id);      
        //Create a new task and assign it the variable t
    Task t = new Task();
    // Assign Values to the task t
    t.WhatID          = less.Id;
    t.Ownerid         = less.Ownerid;
    t.subject 	  = 'Task Created by Trigger';
    t.Status	  = 'In Progress';
    t.Description     = 'New Description Task created by Trigger';
    t.ActivityDate = date.today() + 3;
    ta.add(t) ;
        }
         insert ta;
    }
      
}
    
}