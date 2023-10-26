<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../components/includes/static/head.jsp"></jsp:include>

<%--Content body--%>
<div class="bg-gray-100 xl:h-screen dark:bg-primary-100">
    <div class="body-content" x-data="{ open: true }">
        <!-- sidebar -->
        <%@ include file="components/includes/sidebar.jsp" %>

        <!-- main with navbar -->
        <div class="mx-auto transition-all content-wrapper" id="dash"
             x-bind:class="! open ? 'lg:ml-0' : 'lg:ml-[280px]'">
            <!-- navbar -->
            <%@ include file="components/includes/navbar.jsp" %>

            <!-- statistics -->
            <jsp:include page="components/statistics.jsp"></jsp:include>

            <!-- table events and modal -->
            <section class="px-4 py-6">
                <div class="grid grid-cols-1">
                    <div class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
                        <div id="edit-modal" aria-hidden="true"
                             class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full"
                             style="background-color: rgba(0,0,0,.5);">
                            <div class="relative mx-4 overflow-hidden text-left transition-all transform bg-white rounded-lg shadow-xl dark:bg-gray-900 sm:my-8 sm:max-w-lg sm:w-full">
                                <div class="px-4 pt-5 pb-4 sm:p-6 sm:pb-4 overflow-y-auto h-102">
                                    <form action="" method="post" class="">
                                        <div class="container px-4 mx-auto"></div>
                                        <div class="mb-6 flex flex-col items-center">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400">Current Image</label>
                                            <div class="py-2 shrink-0">
                                                <img class="object-cover w-32 h-32 rounded-full"
                                                     src="https://i.postimg.cc/RhQYkKYk/pexels-italo-melo-2379005.jpg"
                                                     alt="Current event photo">
                                            </div>
                                            <label class="block pt-2">
                                                <span class="sr-only">Choose a new event photo</span>
                                                <input type="file"
                                                       class="block w-full text-sm text-slate-500 file:mr-4 file:py-2 file:px-4 file:rounded file:border-0 file:text-sm file:font-semibold dark:file:bg-gray-600 dark:file:text-gray-200 dark:hover:file:bg-gray-700 file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100">
                                            </label>
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventNameEdit">Name:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="text" name="eventNameEdit" id="eventNameEdit" placeholder="Enter the event's name">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventDescriptionEdit">Description:</label>
                                            <textarea class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                      name="eventDescriptionEdit" id="eventDescriptionEdit" rows="5"
                                                      placeholder="Enter the event's description"></textarea>
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventCategoryEdit">Category:</label>
                                            <div class="relative">
                                                <select class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded appearance-none dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                        name="eventCategoryEdit" id="eventCategoryEdit">
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
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventDateEdit">Date:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="date" name="eventDateEdit" id="eventDateEdit">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventTimeEdit">Time:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="time" name="eventTimeEdit" id="eventTimeEdit" step="1">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventLocationEdit">Location:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="text" name="eventLocationEdit" id="eventLocationEdit" placeholder="Enter the event's location">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventNbrVIPEdit">VIP tickets:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="number" name="eventNbrVIPEdit" id="eventNbrVIPEdit" placeholder="Enter the number of VIP tickets">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="eventNbrStandardEdit">Standard tickets:</label>
                                            <input class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                   type="number" name="eventNbrStandardEdit" id="eventNbrStandardEdit" placeholder="Enter the number of standard tickets">
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
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>