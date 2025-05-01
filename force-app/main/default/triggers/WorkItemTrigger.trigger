trigger WorkItemTrigger on sf_devops__Work_Item__c (before update) {
        for (sf_devops__Work_Item__c item : Trigger.new) {
            sf_devops__Work_Item__c oldItem = Trigger.oldMap.get(item.Id);
     
    
            // Example 2: Auto-set field based on status
            if (item.sf_devops__Subject__c  == 'Test') {
                item.addError('The Subject "Test" is not allowed.');
            }
     
        }
    }
