/**
 * @param {string[]} emails
 * @return {number}
 */
const numUniqueEmails = function(emails) {
    
    const result = []; 

    for (const email of emails) {

        const splittedEmail = email.split('@'); 

        splittedEmail[0] = (splittedEmail[0].split('+'))[0];



       splittedEmail[0] = splittedEmail[0].replace(/\./g, "");

       if (!result.includes(splittedEmail.join('@'))) {
        result.push(splittedEmail.join('@')); 
       }
       
  
    }
    return result.length
};
