<%--Head--%>
<jsp:include page="../../components/includes/static/head.jsp"></jsp:include>

<%--Content body--%>
<div class="bg-gray-100 xl:h-screen dark:bg-primary-100">
    <div class="body-content" x-data="{ open: true }">
        <!-- sidebar -->
        <%@ include file="../components/includes/sidebar.jsp"%>

        <!-- main with navbar -->
        <div class="mx-auto transition-all content-wrapper" id="dash"
             x-bind:class="! open ? 'lg:ml-0' : 'lg:ml-[280px]'">
            <!-- navbar -->
            <%@ include file="../components/includes/navbar.jsp"%>

            <!-- statistics -->
            <jsp:include page="../components/statistics.jsp"></jsp:include>

            <!-- table categorys and modal -->
            <section class="px-4 py-6">
                <div class="grid grid-cols-1">
                    <div
                            class="p-4 bg-white rounded-md shadow md:p-6 dark:bg-primary-100 border-2 border-primary-50">
                        <div class="flex justify-between border-b pb-4 dark:border-gray-700 dark:text-gray-400">
                            <h2 class="text-xl font-bold">Categorys</h2>
                            <%--btn add--%>
                            <button onclick="addCategory()" data-modal-target="save-update-modal" data-modal-toggle="save-update-modal"
                                    class="px-4 py-2 text-white rounded-md select-none bg-second-100">Add</button>
                            <%--modal--%>
                            <div id="save-update-modal" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full"
                                 style="background-color: rgba(0,0,0,.5);">
                                <div
                                        class="relative mx-4 overflow-hidden text-left transition-all transform bg-white rounded-lg shadow-xl dark:bg-gray-900 sm:my-8 sm:max-w-lg sm:w-full">
                                    <div class="px-4 pt-5 pb-4 sm:p-6 sm:pb-4 overflow-y-auto h-102">
                                        <input type="hidden" id="add-category" value="">
                                        <input type="hidden" id="update-category" value="">
                                        <form action="#" method="post" name="form_categorys" class="">
                                            <div class="container px-4 mx-auto"></div>
                                            <div class="mb-6 flex flex-col items-center">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400"
                                                       for="">Picture</label>
                                                <div class="py-2 shrink-0">
                                                    <img class="object-cover w-32 h-32 rounded-full"
                                                         src="https://i.postimg.cc/RhQYkKYk/pexels-italo-melo-2379005.jpg"
                                                         alt="Current profile photo">
                                                </div>
                                                <label class="block pt-2">
                                                    <span class="sr-only ">Choose profile photo</span>
                                                    <input type="file" name="picture"
                                                           class="block w-full text-sm text-slate-500 file:mr-4 file:py-2 file:px-4 file:rounded file:border-0 file:text-sm file:font-semibold dark:file:bg-gray-600 dark:file:text-gray-200 dark:hover:file:bg-gray-700 file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100 ">
                                                </label>
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    Username
                                                </label>
                                                <input
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="text" name="username" placeholder="saadmomo4">
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    Full Name
                                                </label>
                                                <input
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="text" name="fullname" placeholder="saad">
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                    Email
                                                </label>
                                                <input
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                        type="text" name="email" disabled placeholder="saad@gmail.com">
                                            </div>
                                            <div class="mb-6">
                                                <label class="mr-2">
                                                    <input type="radio" checked name="male">
                                                    <span class="ml-2 dark:text-gray-400">Male</span>
                                                </label>
                                                <label>
                                                    <input type="radio" name="female" value="option 2">
                                                    <span class="ml-2 dark:text-gray-400">Female</span>
                                                </label>
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400"
                                                       for="">Rool</label>
                                                <div class="relative">
                                                    <select
                                                            class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded appearance-none dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                            name="job">
                                                        <option>Manager</option>
                                                        <option>CEO</option>
                                                        <option>Assistant</option>
                                                        <option>Designer</option>
                                                    </select>
                                                    <div
                                                            class="absolute inset-y-0 right-0 flex items-center px-2 text-gray-500 pointer-events-none">
                                                        <svg class="w-4 h-4 fill-current" xmlns="http://www.w3.org/2000/svg"
                                                             viewBox="0 0 20 20">
                                                            <path
                                                                    d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z">
                                                            </path>
                                                        </svg>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-6">
                                                <label class="block mb-2 text-sm font-medium dark:text-gray-400"
                                                       for="">Message</label>
                                                <textarea
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                        name="message" rows="5" placeholder="Write something..."></textarea>
                                            </div>
                                    </div>
                                    <div class="px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                                        <button type="button" name="save"
                                                class="inline-flex justify-center w-full px-4 py-2 text-base font-medium text-blue-500 border border-transparent border-blue-600 rounded-md shadow-sm bg-blue-50 hover:text-gray-100 hover:bg-blue-700 focus:outline-none dark:hover:bg-blue-500 dark:text-gray-100 dark:bg-blue-400 focus:ring-2 focus:ring-offset-2 dark:focus:ring-0 dark:focus:ring-offset-0 focus:ring-blue-500 sm:ml-3 sm:w-auto sm:text-sm">Save</button>
                                        <button type="button" data-modal-hide="save-update-modal"
                                                class="inline-flex justify-center w-full px-4 py-2 mt-3 text-base font-medium text-gray-700 bg-white border border-gray-300 rounded-md shadow-sm hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-700 dark:text-gray-100 focus:ring-blue-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm dark:focus:ring-0 dark:focus:ring-offset-0">Cancel</button>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <%--table--%>
                        <div class="overflow-x-auto rounded shadow dark:bg-transparent bg-white">
                            <table id="example" class="w-full table-auto display dark:bg-primary-100" style="width: 100%;">
                                <thead class="bg-lightGray-50">
                                <tr
                                        class="text-xs text-left text-gray-500 border-b border-gray-200 dark:border-gray-800">
                                    <th class="flex items-center py-4 pl-6 font-medium dark:text-gray-400">
                                        <span>Name</span>
                                    </th>
                                    <th class="px-6 py-4 font-medium dark:text-gray-400">Age</th>
                                    <th class="px-6 py-4 font-medium dark:text-gray-400">Created</th>
                                    <th class="px-6 py-4 font-medium dark:text-gray-400">Job Title</th>
                                    <th class="px-6 py-4 font-medium dark:text-gray-400">Status</th>
                                    <th class="px-6 py-4 font-medium dark:text-gray-400">Actions</th>
                                    <th class="px-6 py-4 font-medium dark:text-gray-400"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="border-b border-gray-200 dark:border-gray-800">
                                    <td class="flex items-center px-6 py-3 font-medium">
                                        <div class="flex">
                                            <img class="object-cover w-10 h-10 mr-4 rounded-full"
                                                 src="https://i.postimg.cc/WbPKvgBr/pexels-italo-melo-2379005.jpg"
                                                 alt="">
                                            <div>
                                                <p class="text-sm font-medium dark:text-gray-400">John Smith</p>
                                                <p class="text-xs text-gray-500 dark:text-gray-500">
                                                    john@gmail.com</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">28</td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">07/01/2022</td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">Product Designer
                                    </td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">
                                                <span
                                                        class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">Approved</span>
                                    </td>
                                    <td class="px-6">
                                        <div class="flex ">
                                            <button onclick="editCategory(1, 'John Smith', 'john@gmail.com', 'Manager')" data-modal-target="save-update-modal" data-modal-toggle="save-update-modal"
                                               class="px-4 py-2 mr-4 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Edit</button>
                                            <button 
                                               class="px-4 py-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Delete</button>
                                        </div>
                                    </td>
                                    <td class="px-6 text-sm font-medium">
                                        <a href="#"
                                           class="text-gray-700 dark:text-gray-400 dark:hover:text-gray-200 hover:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                 fill="currentColor" class="bi bi-three-dots"
                                                 viewBox="0 0 16 16">
                                                <path
                                                        d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
                                            </svg>
                                        </a>
                                    </td>
                                </tr>
                                <tr class="border-b border-gray-200 dark:border-gray-800" >
                                    <td class="flex items-center px-6 py-3 font-medium">
                                        <div class="flex">
                                            <img class="object-cover w-10 h-10 mr-4 rounded-full"
                                                 src="https://i.postimg.cc/WbPKvgBr/pexels-italo-melo-2379005.jpg"
                                                 alt="">
                                            <div>
                                                <p class="text-sm font-medium dark:text-gray-400">Adam Smith</p>
                                                <p class="text-xs text-gray-500 dark:text-gray-500">
                                                    adam@gmail.com</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">28</td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">07/01/2022</td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">Product Designer
                                    </td>
                                    <td class="px-6 text-sm font-medium dark:text-gray-400">
                                                <span
                                                        class="inline-block px-2 py-1 text-blue-700 bg-blue-100 rounded-full dark:bg-gray-800 dark:text-gray-400">Approved</span>
                                    </td>
                                    <td class="px-6">
                                        <div class="flex ">
                                            <button onclick="editCategory(2, 'Adam Smith', 'adam@gmail.com', 'CEO')" data-modal-target="save-update-modal" data-modal-toggle="save-update-modal"
                                               class="px-4 py-2 mr-4 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Edit</button>
                                            <button
                                               class="px-4 py-2 text-sm text-gray-600 bg-gray-200 rounded-md dark:bg-gray-600 dark:text-gray-400 dark:hover:bg-gray-800 hover:bg-gray-300">Delete</button>
                                        </div>
                                    </td>
                                    <td class="px-6 text-sm font-medium">
                                        <a href="#"
                                           class="text-gray-700 dark:text-gray-400 dark:hover:text-gray-200 hover:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                 fill="currentColor" class="bi bi-three-dots"
                                                 viewBox="0 0 16 16">
                                                <path
                                                        d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
                                            </svg>
                                        </a>
                                    </td>
                                </tr>
                                </tbody>
                            </table><%--              <div class="px-6 py-5 text-right">--%>
                            <%--                <a class="inline-flex items-center text-xs font-medium text-blue-500 dark:hover:text-blue-400 dark:text-blue-300 hover:text-blue-700"--%>
                            <%--                   href="#">--%>
                            <%--                                        <span class="mr-1">--%>
                            <%--                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"--%>
                            <%--                                                 fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">--%>
                            <%--                                                <path--%>
                            <%--                                                        d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />--%>
                            <%--                                            </svg>--%>
                            <%--                                        </span>--%>
                            <%--                  <span>View all</span>--%>
                            <%--                </a>--%>
                            <%--              </div>--%>
                        </div>
                    </div>
                </div>
        </div>
        </section>
    </div>
</div>


<%--links js--%>
<jsp:include page="../../components/includes/js.jsp"></jsp:include>