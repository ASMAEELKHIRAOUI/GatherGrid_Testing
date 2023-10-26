//Form Categorys Modal
const form_categorys = document.forms["form_categorys"];
const add_country = document.querySelector("#add-category");
const update_country = document.querySelector("#update-category");
// add
function addCategory() {
    //clear
    form_categorys.reset();

    // action changes
    form_categorys.action = add_country.value;

    //btn save
    form_categorys.save.innerHTML = "Save";
}
// edite
function editCategory(id, username, email, job){
    // action changes
    form_categorys.action = update_country.value;

    form_categorys.id.value = id;
    form_categorys.username.value = username;
    form_categorys.email.value = email;
    form_categorys.job.value = job;

    //btn save
    form_categorys.save.innerHTML = "Update";

    //remove required picture -> 'if using picture you must remove required because you don't need change picture'
    form_categorys.picture.removeAttribute('required');

}

// delete
function deleteCategory(id){
    //soon
}

// ----------------------------------------------
//Form Categorys Modal
const form_events = document.forms["form_events"];
const add_event = document.querySelector("#add-event");
const update_event = document.querySelector("#update-event");
// add
function addEvent() {
    //clear
    form_events.reset();

    // action changes
    form_events.action = add_event.value;

    //btn save
    form_events.save.innerHTML = "Save";
}
// edite
// function editEvent(id, name, description, location, date, hour, nbrStandard, nbrVIP, category_name){
function editEvent(id){
    // action changes

    alert(id)
    form_events.action = update_event.value;

    form_events.event_id.value = id;
    form_events.eventNameEdit.value = name;
    form_events.eventDescriptionEdit.value = description;
    form_events.eventLocationEdit.value = location;
    form_events.eventDateEdit.value = date;
    form_events.eventTimeEdit.value = hour;
    form_events.eventNbrStandardEdit.value = nbrStandard;
    form_events.eventNbrVIPEdit.value = nbrVIP;
    form_events.eventCategoryEdit.value = category_name;

    //btn save
    form_events.save.innerHTML = "Update";

    //remove required picture -> 'if using picture you must remove required because you don't need change picture'
    form_events.picture.removeAttribute('required');

}

// delete
function deleteEvent(id) {
    //soon
}
