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

            <%--profile--%>
            <section class="py-16 bg-gray-100 dark:bg-primary-100">
                            <div class="max-w-4xl px-4 mx-auto ">
                                <div class="p-6 bg-white rounded-md shadow border-2 dark:border-primary-50 dark:bg-primary-100">
                                    <h2 class="mb-6 text-xl font-medium leading-6 text-gray-900 dark:text-gray-300">Personal
                                        Information
                                    </h2>
                                    <form action="#" method="post" class="">
                                        <div class="container px-4 mx-auto"></div>
                                        <div class="mb-6 flex flex-col items-center">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400"
                                                   for="">Your Picture</label>
                                            <div class="py-2 shrink-0">
                                                <img class="object-cover w-32 h-32 rounded-full"
                                                     src="https://i.postimg.cc/RhQYkKYk/pexels-italo-melo-2379005.jpg"
                                                     alt="Current profile photo">
                                            </div>
                                            <label class="block pt-2">
                                                <span class="sr-only ">Choose profile photo</span>
                                                <input type="file"
                                                       class="block w-full text-sm text-slate-500 file:mr-4 file:py-2 file:px-4 file:rounded file:border-0 file:text-sm file:font-semibold dark:file:bg-gray-600 dark:file:text-gray-200 dark:hover:file:bg-gray-700 file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100 ">
                                            </label>
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                Username
                                            </label>
                                            <input
                                                    class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                    type="text" name="" placeholder="saadmomo4">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                Full Name
                                            </label>
                                            <input
                                                    class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                    type="text" name="" placeholder="saad">
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400" for="">
                                                Email
                                            </label>
                                            <input
                                                    class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded dark:text-gray-400 dark:placeholder-gray-500 dark:border-primary-50 dark:bg-primary-100"
                                                    type="text" name="" disabled placeholder="saad@gmail.com">
                                        </div>
                                        <div class="mb-6">
                                            <label class="mr-2">
                                                <input type="radio" checked name="inline-radio">
                                                <span class="ml-2 dark:text-gray-400">Male</span>
                                            </label>
                                            <label>
                                                <input type="radio" name="inline-radio" value="option 2">
                                                <span class="ml-2 dark:text-gray-400">Female</span>
                                            </label>
                                        </div>
                                        <div class="mb-6">
                                            <label class="block mb-2 text-sm font-medium dark:text-gray-400"
                                                   for="">Rool</label>
                                            <div class="relative">
                                                <select
                                                        class="block w-full px-4 py-3 mb-2 text-sm placeholder-gray-500 bg-white border rounded appearance-none dark:text-gray-400 dark:border-primary-50 dark:bg-primary-100"
                                                        name="field-name">
                                                    <option>Manager </option>
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
                                                    name="field-name" rows="5" placeholder="Write something..."></textarea>
                                        </div>

                                        <div class="mt-7">
                                            <div class="flex justify-start space-x-2">
                                                <button type="button"
                                                        class="inline-block px-6 py-2.5 bg-second-100 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-primary-50">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                    </div>
            </section>

    </div>
</div>
</div>

<%--links js--%>
<jsp:include page="../../components/includes/js.jsp"></jsp:include>
