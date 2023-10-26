<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../components/includes/static/head.jsp"></jsp:include>
<%--Content body--%>
<div class="bg-gray-100 xl:h-screen dark:bg-primary-100">
<%--<<<<<<< HEAD:src/main/webapp/pages/dashbaord/events.jsp--%>
    <div class="body-content" x-data="{ open: true }">
        <!-- sidebar -->
        <%@ include file="/dashbaord/components/includes/sidebar.jsp" %>
        <!-- main with navbar -->
        <div class="mx-auto transition-all content-wrapper" id="dash"
             x-bind:class="! open ? 'lg:ml-0' : 'lg:ml-[280px]'">
            <!-- navbar -->
            <%@ include file="/dashbaord/components/includes/navbar.jsp" %>
            <!-- statistics -->
            <jsp:include page="/dashbaord/components/statistics.jsp"></jsp:include>
            <!-- table events and modal -->
            <section class="px-4 py-6" x-data="{ open: false }">
                <div class="grid grid-cols-1">
                    <div class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
                        <div class="flex justify-between border-b pb-4 dark:border-gray-700 dark:text-gray-400">
                            <h2 class="text-xl font-bold">Events</h2>
                            <%--btn add--%>
                            <button data-modal-target="save-modal" data-modal-toggle="save-modal"
                                    class="px-4 py-2 text-white rounded-md select-none bg-second-100">Add Event
                            </button>
                            <%--modal--%>
                            <div id="save-modal" tabindex="-1" aria-hidden="true"
                                 class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full"
                                 style="background-color: rgba(0,0,0,.5);">
                                <div class="relative mx-4 overflow-hidden text-left transition-all transform bg-white rounded-lg shadow-xl dark:bg-gray-900 sm:my-8 sm:max-w-lg sm:w-full">
                                    <div class="px-4 pt-5 pb-4 sm:p-6 sm:pb-4 overflow-y-auto h-102">
<%--                                        ################################ add event form modal--%>
                                        <form action="" method="post" class="" id="add-event"
<%--                                              enctype="multipart/form-data"--%>
                                        >
                                            <div class="container px-4 mx-auto"></div>
                                            <div class="mb-6 flex flex-col">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400">Insert an image:</label>
                                                <input type="file" name="eventImage" class="block w-full text-sm text-slate-500 file:mr-4 file:py-2 file:px-4 file:rounded file:border-0 file:text-sm file:font-semibold dark:file:bg-gray-600 dark:file:text-gray-200 dark:hover:file:bg-gray-700 file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100 ">
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    Name:
                                                </label>
                                                <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="text" name="eventName"
                                                        placeholder="Enter the event's name">
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400"
                                                       for="">Description</label>
                                                <textarea
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                        name="eventDescription" rows="5"
                                                        placeholder="Enter the event's description"></textarea>
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400"
                                                       for="">Category</label>
                                                <div class="relative">
                                                    <select
                                                            class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded appearance-none dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                            name="eventCategory">
                                                        <option value="1">dfghjk</option>
                                                    </select>
                                                    <div class="absolute inset-y-0 right-0 flex items-center px-2 text-gray-500 pointer-events-none">
                                                        <svg class="w-4 h-4 fill-current"
                                                             xmlns="http://www.w3.org/2000/svg"
                                                             viewBox="0 0 20 20">
                                                            <path
                                                                    d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z">
                                                            </path>
                                                        </svg>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    Date
                                                </label>
                                                <input
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="date" name="eventDate">
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400">
                                                    Time
                                                </label>
                                                <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                       type="time" name="eventTime" step="1">
                                            </div>
                                            <div class="mb-6">
                                                <%--@declare id=""--%><label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    Location
                                                </label>
                                                <input
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="text" name="eventLocation">
                                            </div>
                                            <div class="mb-6">
                                                <%--@declare id=""--%><label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    VIP tickets
                                                </label>
                                                <input
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="number" name="eventNbrVIP">
                                            </div>
                                            <div class="mb-6">
                                                <%--@declare id=""--%><label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    Standard tickets
                                                </label>
                                                <input
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="number" name="eventNbrStandard">
                                            </div>
                                            <div class="px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                                                <input type="submit" value="Save" class="inline-flex justify-center w-full px-4 py-2 text-base font-medium text-blue-500 border border-transparent border-blue-600 rounded-md shadow-sm bg-blue-50 hover:text-gray-100 hover:bg-blue-700 focus:outline-none dark:hover:bg-blue-500 dark:text-gray-100 dark:bg-blue-400 focus:ring-2 focus:ring-offset-2 dark:focus:ring-0 dark:focus:ring-offset-0 focus:ring-blue-500 sm:ml-3 sm:w-auto sm:text-sm"/>
                                                <button data-modal-hide="save-modal"
                                                        class="inline-flex justify-center w-full px-4 py-2 mt-3 text-base font-medium text-gray-700 bg-white border border-gray-300 rounded-md shadow-sm hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-700 dark:text-gray-100 focus:ring-blue-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm dark:focus:ring-0 dark:focus:ring-offset-0">
                                                    Cancel
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--table--%>
                        <div class="overflow-x-auto rounded shadow dark:bg-transparent bg-white">
                            <table id="example" class="w-full table-auto display dark:bg-primary-100"
                                   style="width: 100%;">
                                <thead class="bg-lightGray-50">
                                <tr class="text-xs text-left text-gray-500 border-b border-gray-200 dark:border-gray-800">
                                    <th class="flex items-center py-4 pl-6 font-medium dark:text-gray-400">
                                        <span>Name</span>
                                    </th>
                                    <th class="px-5 py-4 font-medium dark:text-gray-400">Category</th>
                                    <th class="px-5 py-4 font-medium dark:text-gray-400">Organizer</th>
                                    <th class="px-5 py-4 font-medium dark:text-gray-400">Date</th>
                                    <th class="px-5 py-4 font-medium dark:text-gray-400">Time</th>
                                    <th class="px-5 py-4 font-medium dark:text-gray-400">Location</th>
                                    <th class="px-5 py-4 font-medium dark:text-gray-400">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                            <c:forEach var="event" items="${events}">
                                <tr class="border-b border-gray-200 dark:border-gray-800">
                                    <td class="flex items-center px-6 py-3 font-medium">
                                        <div class="flex">
                                            <img class="object-cover w-10 h-10 mr-4 rounded-full"
                                                 src="https://i.postimg.cc/WbPKvgBr/pexels-italo-melo-2379005.jpg"
                                                 alt="">
                                            <div>
                                                <p class="text-sm font-medium dark:text-gray-400">${event.name}</p>
                                                <p class="text-xs text-gray-500 dark:text-gray-500">
                                                        ${event.description}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">
                                        <span class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">${event.category.name}</span>
                                    </td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">${event.organizer.firstName} ${event.organizer.lastName}</td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">${event.date}</td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">${event.hour}</td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">${event.location}</td>
                                    <td class="px-6 text-sm font-medium">
                                        <div class="flex ">
<%--                                            <form action="" method="PUT">--%>
<%--&lt;%&ndash;                                                <input type="hidden" name="action" value="edit">&ndash;%&gt;--%>
<%--                                                <input type="hidden" name="eventId" value="${event.id}">--%>
<%--                                                <button data-modal-target="edit-modal" data-modal-toggle="edit-modal" data-event-id="${event.id}"> class="px-4 py-2 mr-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Edit</button>--%>
<%--                                            </form>--%>
                                            <button data-modal-target="edit-modal" data-modal-toggle="edit-modal" data-event-id="${event.id}" class="px-4 py-2 mr-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300"
<%--                                                    onclick="editEvent(${event.id}, ${event.name}, ${event.description}, ${event.location}, ${event.date}, ${event.hour}, ${event.nbrStandard}, ${event.nbrVIP}, ${event.category.name})"--%>
                                                    onclick="editEvent(${event.id})"
                                            >Edit</button>
                                            <form action="" method="POST">
                                                <input type="hidden" name="action" value="delete">
                                                <input type="hidden" name="eventId" value="${event.id}">
                                                <button class="px-4 py-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Delete</button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div id="edit-modal" tabindex="-1" aria-hidden="true"
                             class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full"
                             style="background-color: rgba(0,0,0,.5);">
                            <div class="relative mx-4 overflow-hidden text-left transition-all transform bg-white rounded-lg shadow-xl dark:bg-gray-900 sm:my-8 sm:max-w-lg sm:w-full">
                                <div class="px-4 pt-5 pb-4 sm:p-6 sm:pb-4 overflow-y-auto h-102">
<%--                                    ################ edit event form--%>
                                    <form action="" method="post" class="edit-modal" id="update-event">
                                        <!-- Include a hidden input field for the event_id -->
                                        <input type="hidden" name="eventId" id="id">
                                        <div class="container px-4 mx-auto"></div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400">Name:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="text" name="eventNameEdit" id="name" placeholder="Enter the event's name">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" >Description:</label>
                                            <textarea class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                      name="eventDescriptionEdit" id="description" rows="5"
                                                      placeholder="Enter the event's description"></textarea>
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" >Category:</label>
                                            <div class="relative">
                                                <select class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded appearance-none dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                        name="eventCategoryEdit" id="category_name">
                                                    <option value="">select gfcvyhfguefhfe</option>
                                                    <option value="dfghjk">dfghjk</option>
                                                </select>
                                                <div class="absolute inset-y-0 right-0 flex items-center px-2 text-gray-500 pointer-events-none">
                                                    <svg class="w-4 h-4 fill-current"
                                                         xmlns="http://www.w3.org/2000/svg"
                                                         viewBox="0 0 20 20">
                                                        <path
                                                                d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z">
                                                        </path>
                                                    </svg>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400">Date:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="date" name="eventDateEdit" id="date">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400">Time:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="time" name="eventTimeEdit" id="time" step="1">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400">Location:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="text" name="eventLocationEdit" id="location" placeholder="Enter the event's location">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" >VIP tickets:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="number" name="eventNbrVIPEdit" id="nbrVIP" placeholder="Enter the number of VIP tickets">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="nbrStandard">Standard tickets:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="number" name="eventNbrStandardEdit" id="nbrStandard" placeholder="Enter the number of standard tickets">
                                        </div>
                                        <div class="px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                                            <input type="submit" name="action" value="Update"
                                                   class="inline-flex justify-center w-full px-4 py-2 text-base font-medium text-blue-500 border border-transparent border-blue-600 rounded-md shadow-sm bg-blue-50 hover:text-gray-100 hover:bg-blue-700 focus:outline-none dark:hover:bg-blue-500 dark:text-gray-100 dark:bg-blue-400 focus:ring-2 focus:ring-offset-2 dark:focus:ring-0 dark:focus:ring-offset-0 focus:ring-blue-500 sm:ml-3 sm:w-auto sm:text-sm"/>
                                            <button data-modal-hide="edit-modal"
                                                    class="inline-flex justify-center w-full px-4 py-2 mt-3 text-base font-medium text-gray-700 bg-white border border-gray-300 rounded-md shadow-sm hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-700 dark:text-gray-100 focus:ring-blue-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm dark:focus:ring-0 dark:focus:ring-offset-0">
                                                Cancel
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- JavaScript to open the edit modal and populate the form -->
                        <script src="https://code.jquery.com/jquery-3.6.0.min.js">
                            // Function to find an event by its ID
                            function findEventById(eventId) {
                                for (const event of ${events}) {
                                    if (event.id === eventId) {
                                        return event;
                                    }
                                }
                                return null;
                            }
                        </script>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
</div>
<%--links js--%>
<jsp:include page="../../components/includes/js.jsp"></jsp:include>