trigger lessontrigger on Lesson__c (after update) {
    UpdateLesson.completedLesson(trigger.new);
}