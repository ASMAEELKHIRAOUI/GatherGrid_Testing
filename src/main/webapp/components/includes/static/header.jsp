<header>
    <nav class="bg-white border-gray-200 px-4 lg:px-6 py-3 bg-primary-100 dark:bg-primary-100">
        <div class="flex flex-wrap justify-between items-center mx-auto max-w-screen-2xl">
            <a href="https://flowbite.com" class="flex items-center">
                <img src="https://flowbite.com/docs/images/logo.svg" class="mr-3 h-6 sm:h-9" alt="Flowbite Logo" />
                <span class="self-center text-xl font-semibold whitespace-nowrap dark:text-white">GatherGrid</span>
            </a>
            <div class="flex items-center lg:order-1">
                <button data-collapse-toggle="mobile-menu-2" type="button"
                        class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                        aria-controls="mobile-menu-2" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                              clip-rule="evenodd"></path>
                    </svg>
                    <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                              clip-rule="evenodd"></path>
                    </svg>
                </button>
            </div>
            <div class="hidden justify-between items-center w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
                <ul
                        class="flex items-center flex-col mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0 font-poppins">
                    <li>
                        <a href="../../../index.jsp"
                           class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 dark:hover:text-second-50 dark:border-gray-700">Home</a>
                    </li>
                    <li>
                        <a
<%--                                href="../../../pages/events.jsp"--%>
                                href="events"
                           class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 dark:hover:text-second-50 dark:border-gray-700">Events</a>
                    </li>
                    <li>
                        <a href="#"
                           class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 dark:hover:text-second-50 dark:border-gray-700">Contact</a>
                    </li>
                    <%if(session.getAttribute("user")==null){%>
                    <%-- Btn login modal if not user exist--%>
                    <li>
                        <a href="#" id="defaultModalButton" data-modal-toggle="modal-sign-in"
                           class="flex items-center hover:bg-primary-100-800 hover:focus:ring-2 hover:focus:ring-second-100 rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 dark:bg-second-100 dark:text-white focus:outline-none">Get
                            started <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                <path fill="currentColor"
                                      d="M9.29 15.88L13.17 12L9.29 8.12a.996.996 0 1 1 1.41-1.41l4.59 4.59c.39.39.39 1.02 0 1.41L10.7 17.3a.996.996 0 0 1-1.41 0c-.38-.39-.39-1.03 0-1.42z" />
                            </svg></a>
                    </li>
                    <%}%>
                    <%--B user if exist--%>
                    <%if(session.getAttribute("user")!=null){%>
                        <li class="mt-3 lg:mt-0">
                            <div aria-expanded="false" data-dropdown-toggle="dropdown" class="lg:block">
                                <button class="flex items-center">
                                    <div class="mr-2">
                                        <img src="https://i.postimg.cc/pr2Q6n1w/pexels-italo-melo-2379005.jpg"
                                             class="object-cover object-right w-10 h-10 rounded-full"
                                             alt="person">
                                    </div>
                                    <span>
                                                    <svg class="text-gray-400" width="10" height="6" viewBox="0 0 10 6"
                                                         fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M9.08335 0.666657C8.75002 0.333323 8.25002 0.333323 7.91669 0.666657L5.00002 3.58332L2.08335 0.666657C1.75002 0.333323 1.25002 0.333323 0.916687 0.666657C0.583354 0.99999 0.583354 1.49999 0.916687 1.83332L4.41669 5.33332C4.58335 5.49999 4.75002 5.58332 5.00002 5.58332C5.25002 5.58332 5.41669 5.49999 5.58335 5.33332L9.08335 1.83332C9.41669 1.49999 9.41669 0.99999 9.08335 0.666657Z"
                                                                fill="currentColor"></path>
                                                    </svg>
                                                </span>
                                </button>
                            </div>

                            <!-- Dropdown menu -->
                            <div id="dropdown" class="hidden z-50 my-2 w-56 text-base list-none bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600">
                                <div id="dropdown_profile"
                                     class="absolute right-0 w-48 mt-2 origin-top-left bg-white rounded shadow dark:bg-primary-100 dark:text-gray-100 border border-primary-50">
                                    <div class="px-4 py-3">
                                        <div class="text-start md:block mb-2">
                                            <p class="text-lg font-bold text-black dark:text-gray-400"> John Doe
                                            </p>
                                        </div>
                                        <a href="#"
                                           class="flex px-4 py-2 text-sm text-gray-700 dark:text-gray-400 dark:hover:bg-primary-50 hover:bg-gray-100">
                                            <svg class="mr-2" xmlns="http://www.w3.org/2000/svg" width="18"
                                                 height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                 stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <circle cx="12" cy="12" r="3"></circle>
                                                <path
                                                        d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z">
                                                </path>
                                            </svg>
                                            Account
                                        </a>
                                        <form action="login" method="get">
                                            <button type="submit" href="#"
                                                    class="flex px-4 py-2 text-sm text-gray-700 dark:hover:bg-primary-50 dark:text-gray-400 hover:bg-gray-100">
                                                <svg class="mr-2" xmlns="http://www.w3.org/2000/svg" width="18"
                                                     height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                                    <polyline points="16 17 21 12 16 7"></polyline>
                                                    <line x1="21" y1="12" x2="9" y2="12"></line>
                                                </svg>
                                                Logout
                                            </button>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </li>
                    <%}%>
                   <%-- E user if exist--%>
                </ul>
            </div>
        </div>
    </nav>
</header>

<%if(session.getAttribute("user")==null){%>
<jsp:include page="../../modals/Login.jsp"></jsp:include>
<%}%>